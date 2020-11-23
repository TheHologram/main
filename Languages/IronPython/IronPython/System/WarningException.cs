#if FEATURE_WARNINGEXCEPTION_STUB

namespace System.ComponentModel
{
    using System;
    using Runtime.Serialization;
    using Security.Permissions;

    [Serializable, HostProtection(SecurityAction.LinkDemand, SharedState = true)]
    public class WarningException : SystemException
    {
        public WarningException() : this(null, null, null)
        {
        }

        public WarningException(string message) : this(message, null, null)
        {
        }

        protected WarningException(SerializationInfo info, StreamingContext context) : base(info, context)
        {
            HelpUrl = (string) info.GetValue("helpUrl", typeof(string));
            HelpTopic = (string) info.GetValue("helpTopic", typeof(string));
        }

        public WarningException(string message, Exception innerException) : base(message, innerException)
        {
        }

        public WarningException(string message, string helpUrl) : this(message, helpUrl, null)
        {
        }

        public WarningException(string message, string helpUrl, string helpTopic) : base(message)
        {
            HelpUrl = helpUrl;
            HelpTopic = helpTopic;
        }

        [SecurityPermission(SecurityAction.Demand, SerializationFormatter = true)]
        public override void GetObjectData(SerializationInfo info, StreamingContext context)
        {
            if (info == null) {
                throw new ArgumentNullException(nameof(info));
            }
            info.AddValue("helpUrl", HelpUrl);
            info.AddValue("helpTopic", HelpTopic);
            base.GetObjectData(info, context);
        }

        public string HelpTopic { get; }

        public string HelpUrl { get; }
    }
}

#endif