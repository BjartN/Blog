namespace Blog.Core
{
    public class Tag
    {
        public Tag(){}

        public Tag(string name)
        {
            TagName = name.Trim().ToLower();
        }

        public override string ToString()
        {
            return TagName;
        }

        public override bool Equals(object obj)
        {
            return ((Tag)obj).TagName == TagName;
        }

        public override int GetHashCode()
        {
            return TagName.GetHashCode();
        }

        public string TagName { get;  set; }
    }
}