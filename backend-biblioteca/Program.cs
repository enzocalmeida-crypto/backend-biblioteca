using backend_biblioteca.Data;

WebApplicationBuilder builder =
    WebApplication.CreateBuilder(args);

builder.Services.AddControllers();

builder.Services.AddSingleton<ConexaoBanco>();

WebApplication app = builder.Build();

app.MapControllers();

app.Run();