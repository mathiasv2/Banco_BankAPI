﻿using System;
using System.Text.Json;

namespace Blanco_BankAPI
{
    public class WrappedMessage<T>
    {
        public string Pattern { get; set; }
        public T Data { get; set; }
        public string Id { get; set; }
        public string Action { get; set; }
    }
}


