namespace WebApi.Models
{
    /// <summary>
    /// Simple Person model used for CRUD operations.
    /// </summary>
    public class Person
    {
        public int Id { get; set; }
        public string FirstName { get; set; } = string.Empty;
        public string LastName { get; set; } = string.Empty;
    }
}
