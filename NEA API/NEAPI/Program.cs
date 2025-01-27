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

app.MapGet("/questions/{categoryID}", (int categoryID) => {
    connection.Open();    
    string sql   ;
    if(categoryID != 0){
        sql = $"SELECT q.ID, q.questionTitle, q.questionText, q.startCode, q.programTest, q.solution FROM dbo.Questions q JOIN dbo.QCLink qc ON q.ID = qc.questionID WHERE qc.categoryID = {categoryID}";

    } else {
        sql = $"SELECT ID, questionTitle, questionText, startCode, programTest, solution FROM dbo.Questions";
    }
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

app.MapGet("/questions/{categoryID}/{questionID}", (int categoryID, int questionID) => {
    connection.Open();    
    string sql   ;

    sql = $"SELECT ID, questionTitle, questionText, startCode, programTest, solution FROM dbo.Questions WHERE ID = {questionID}";

    using SqlCommand command = new SqlCommand(sql, connection);
    
    using SqlDataReader reader = command.ExecuteReader(); 

    questionClass question = new questionClass();

    while (reader.Read()){
        question = new questionClass{questionID=reader.GetInt32(0),questionTitle=reader.GetString(1),questionText=reader.GetString(2),startCode=reader.GetString(3),programTest=reader.GetString(4),solution=reader.GetString(5)};
    }
    connection.Close();
    return question;    
})
.WithName("GetQuestion")
.WithOpenApi();

app.MapPost("/verifyuser", async (VerifyUserRequest request) =>
{
    Console.WriteLine("Received");
    var email = request.Email;
    connection.Open();  

    string sql;

    int returnCode = -1;

    sql = $"SELECT * FROM dbo.[User] WHERE email = '{email}'";

    using SqlCommand command = new SqlCommand(sql, connection);
    
    using SqlDataReader reader = command.ExecuteReader(); 

    while (reader.Read()){
        returnCode = reader.GetInt32(0);
    }

    Console.WriteLine(returnCode);

    connection.Close();
    return Results.Ok(returnCode);    
})
.WithName("VerifyUser")
.WithOpenApi();

app.MapPost("/submit", (answerClass answer) => {
    connection.Open();  

    string sql;

    sql = $"INSERT INTO dbo.Answers (userID, questionID, content) VALUES ({answer.userID},{answer.questionID},'{answer.content}')";

    Console.WriteLine(sql);

    using SqlCommand command = new SqlCommand(sql, connection);
    
    command.ExecuteNonQuery(); 


    connection.Close();
    return;    
})
.WithName("SubmitAnswer")
.WithOpenApi();

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
class answerClass
    {
        public int questionID { get; set; }
        public int userID { get; set; }
        public string content { get; set; }
    }

public class VerifyUserRequest
{
    public string Email { get; set; }
}