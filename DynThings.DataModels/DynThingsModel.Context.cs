﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DynThings.DataModels
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class DynThingsEntities : DbContext
    {
        public DynThingsEntities()
            : base("name=DynThingsEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Alert> Alerts { get; set; }
        public virtual DbSet<CssColor> CssColors { get; set; }
        public virtual DbSet<CssIcon> CssIcons { get; set; }
        public virtual DbSet<DBSetting> DBSettings { get; set; }
        public virtual DbSet<DeviceCommand> DeviceCommands { get; set; }
        public virtual DbSet<DeviceIO> DeviceIOs { get; set; }
        public virtual DbSet<Device> Devices { get; set; }
        public virtual DbSet<DeviceStatu> DeviceStatus { get; set; }
        public virtual DbSet<EndPointCommand> EndPointCommands { get; set; }
        public virtual DbSet<EndPointIO> EndPointIOs { get; set; }
        public virtual DbSet<Endpoint> Endpoints { get; set; }
        public virtual DbSet<EndPointTypeCategory> EndPointTypeCategorys { get; set; }
        public virtual DbSet<EndPointType> EndPointTypes { get; set; }
        public virtual DbSet<IOType> IOTypes { get; set; }
        public virtual DbSet<LinkEndpointsLocation> LinkEndpointsLocations { get; set; }
        public virtual DbSet<LinkLocationsLocationView> LinkLocationsLocationViews { get; set; }
        public virtual DbSet<Location> Locations { get; set; }
        public virtual DbSet<LocationView> LocationViews { get; set; }
        public virtual DbSet<LocationViewType> LocationViewTypes { get; set; }
        public virtual DbSet<Notification> Notifications { get; set; }
    }
}
