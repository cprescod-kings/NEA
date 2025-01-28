using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Authentication.Google;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Components.Authorization;
using Microsoft.AspNetCore.Components.Server;
using Microsoft.EntityFrameworkCore;
using NEAWebsite.Authentication;
using NEAWebsite.Components;

var builder = WebApplication.CreateBuilder(args);

builder.Services.AddHttpContextAccessor();

// Add services to the container.
builder.Services.AddRazorComponents()
    .AddInteractiveServerComponents();

builder.Services.AddScoped(sp => new HttpClient() {BaseAddress = new Uri("http://localhost:5260")});


builder.Services.AddCascadingAuthenticationState();
builder.Services.AddScoped<AuthenticationStateProvider, ServerAuthenticationStateProvider>();
builder.Services.AddAuthentication(AppConstants.AuthScheme)
    .AddCookie(AppConstants.AuthScheme, cookieOptions => {
        cookieOptions.Cookie.Name = AppConstants.AuthScheme;
    }).AddGoogle(GoogleDefaults.AuthenticationScheme, googleOptions => {
        googleOptions.ClientId = "331429665194-i5n5sbfvjuoh8vp781g0ssjklhpcn7cr.apps.googleusercontent.com";
        googleOptions.ClientSecret = "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";
        googleOptions.AccessDeniedPath = "/access-denied";
    });
builder.Services.Configure<AuthenticationOptions>(options =>
{
    options.RequireAuthenticatedSignIn = true; // Allow unauthenticated sign-ins
});

var app = builder.Build();

// Configure the HTTP request pipeline.
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Error", createScopeForErrors: true);
    // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
    app.UseHsts();
}

app.UseAuthentication();
app.UseAuthorization();

app.UseHttpsRedirection();

app.UseStaticFiles();
app.UseAntiforgery();

app.MapRazorComponents<App>()
    .AddInteractiveServerRenderMode();

app.Run();
