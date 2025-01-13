using System;

    namespace Knowleger.Models
    {
      public class Note
      {
        public int Id { get; set; }
        public string Title { get; set; }
        public string Content { get; set; }
        public DateTime CreatedAt { get; set; }
        // ... other properties like tags, categories, etc.
      }
    }
