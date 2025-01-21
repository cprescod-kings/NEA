using Microsoft.Data.SqlClient;
using System.Data;

SqlConnectionStringBuilder sqlBuilder = new SqlConnectionStringBuilder();

    sqlBuilder.DataSource = "KAB-SQL\\KABSQL22"; 
    sqlBuilder.UserID = "csharp";            
    sqlBuilder.Password = "BlueCat12";     
    sqlBuilder.InitialCatalog = "MusicStore";
    sqlBuilder.TrustServerCertificate=true;

    using SqlConnection connection = new SqlConnection(sqlBuilder.ConnectionString);

var builder = WebApplication.CreateBuilder(args);

static void ReadSingleRow(IDataRecord dataRecord)
{
    Console.WriteLine(String.Format("{0}, {1}", dataRecord[0], dataRecord[1]));
}


// Add services to the container.
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseHttpsRedirection();

app.MapGet("/questions", () => {
    connection.Open();       

    String sql = "SELECT AlbumId,Title,ArtistId FROM Album";

    using SqlCommand command = new SqlCommand(sql, connection);
    
    using SqlDataReader reader = command.ExecuteReader(); 

    List<AlbumClass> albumList = new List<AlbumClass>();

    while (reader.Read()){
        //Console.WriteLine("{0} {1} {2}", reader.GetInt32(0), reader.GetString(1), reader.GetInt32(2));
        albumList.Add(new AlbumClass{AlbumID=reader.GetInt32(0),Title=reader.GetString(1),ArtistID=reader.GetInt32(2)});
    }
    connection.Close();
    return albumList;    
})
.WithName("GetQuestions")
.WithOpenApi();

app.Run();

class AlbumClass
{
    public int AlbumID { get; set; }
    public string? Title { get; set; }
    public int ArtistID { get; set; }
}


//Ignore the weather stuff, only keeping it in to see if i can have multiple endpoints
// var summaries = new[]
// {
//     "Freezing", "Bracing", "Chilly", "Cool", "Mild", "Warm", "Balmy", "Hot", "Sweltering", "Scorching"
// };

// app.MapGet("/weatherforecast", () =>
// {
//     var forecast =  Enumerable.Range(1, 5).Select(index =>
//         new WeatherForecast
//         (
//             DateOnly.FromDateTime(DateTime.Now.AddDays(index)),
//             Random.Shared.Next(-20, 55),
//             summaries[Random.Shared.Next(summaries.Length)]
//         ))
//         .ToArray();
//     return forecast;
// })
// .WithName("GetWeatherForecast")
// .WithOpenApi();

// record WeatherForecast(DateOnly Date, int TemperatureC, string? Summary)
// {
//     public int TemperatureF => 32 + (int)(TemperatureC / 0.5556);
// }