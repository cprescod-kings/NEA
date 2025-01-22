using Microsoft.Data.SqlClient;
using System.Data;

SqlConnectionStringBuilder sqlBuilder = new SqlConnectionStringBuilder();

    sqlBuilder.DataSource = "KAB-SQL\\KABSQL22"; 
    sqlBuilder.UserID = "csharp";            
    sqlBuilder.Password = "BlueCat12";     
    sqlBuilder.InitialCatalog = "CPRESCOD";
    sqlBuilder.TrustServerCertificate=true;

    using SqlConnection connection = new SqlConnection(sqlBuilder.ConnectionString);

var builder = WebApplication.CreateBuilder(args);


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

app.MapGet("/categories", () => {
    connection.Open();       

    String sql = "SELECT ID, name, shortname FROM dbo.QCategory";

    using SqlCommand command = new SqlCommand(sql, connection);
    
    using SqlDataReader reader = command.ExecuteReader(); 

    List<categoryClass> categoryList = new List<categoryClass>();

    while (reader.Read()){
        categoryList.Add(new categoryClass{categoryID=reader.GetInt32(0),name=reader.GetString(1),shortname=reader.GetString(2)});
    }
    connection.Close();
    return categoryList;    
})
.WithName("GetCategories")
.WithOpenApi();

// questions = app.MapGroup("/questions");

app.MapGet("/questions/{categoryID}", (int categoryID) => {
    connection.Open();       

    String sql = $"SELECT q.ID, q.questionTitle, q.questionText, q.startCode, q.programTest, q.solution FROM dbo.Questions q JOIN dbo.QCLink qc ON q.ID = qc.questionID WHERE qc.categoryID = {categoryID}";

    using SqlCommand command = new SqlCommand(sql, connection);
    
    using SqlDataReader reader = command.ExecuteReader(); 

    List<questionClass> questionList = new List<questionClass>();

    while (reader.Read()){
        questionList.Add(new questionClass{questionID=reader.GetInt32(0),questionTitle=reader.GetString(1),questionText=reader.GetString(2),startCode=reader.GetString(3),programTest=reader.GetString(4),solution=reader.GetString(5)});
    }
    connection.Close();
    return questionList;    
})
.WithName("GetQuestions")
.WithOpenApi();

// questions.MapGet("/", () => {
//     connection.Open();       

//     String sql = "SELECT ID, name, shortname FROM dbo.Questions";

//     using SqlCommand command = new SqlCommand(sql, connection);
    
//     using SqlDataReader reader = command.ExecuteReader(); 

//     List<categoryClass> categoryList = new List<categoryClass>();

//     while (reader.Read()){
//         categoryList.Add(new categoryClass{categoryID=reader.GetInt32(0),name=reader.GetString(1),shortname=reader.GetString(2)});
//     }
//     connection.Close();
//     return categoryList;    
// })
// .WithName("GetQuestionsNoID")
// .WithOpenApi();

app.Run();

class categoryClass
{
    public int categoryID { get; set; }
    public string? name { get; set; }
    public string? shortname { get; set; }
}
 
class questionClass
{
    public int questionID { get; set; }
    public string? questionTitle { get; set; }
    public string? questionText { get; set; }
    public string? startCode { get; set; }
    public string? programTest { get; set; }
    public string? solution { get; set; }
}