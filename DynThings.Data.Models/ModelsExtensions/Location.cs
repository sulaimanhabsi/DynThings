﻿/////////////////////////////////////////////////////////////////
// Created by : Caesar Moussalli                               //
// TimeStamp  : 31-1-2016                                      //
// Content    : Extend the properties of Location Model        //
// Notes      : Don't add Behavior in this class               //
/////////////////////////////////////////////////////////////////
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DynThings.Data.Models
{
    public partial class Location
    {
        private DynThingsEntities db = new DynThingsEntities();

        /// <summary>
        /// Get List of associated Endpoints
        /// </summary>
        public List<Endpoint> EndPoints
        {
            get
            {
                List<Endpoint> ends = new List<Endpoint>();
                List<LinkEndpointsLocation> lnks = db.LinkEndpointsLocations.Where(l => l.LocationID == this.ID).ToList();
                foreach (LinkEndpointsLocation lnk in lnks)
                {
                    ends.Add(lnk.Endpoint);
                }
                return ends;
            }
        }
    }
}
