﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DynThings.Data.Models;
using DynThings.Data.Repositories;
using DynThings.Core;

namespace DynThings.WebPortal.Controllers
{
    public class EndPointIOsController : BaseController
    {
        #region ActionResult: Views
        public ActionResult Index()
        {
            if (ValidateUserPermissions(true, false) == false)
            {
                return RedirectToAction("Login", "Account");
            }
            ViewBag.IOTypeID = new SelectList(UnitOfWork_Repositories.repoIOTypes.GetList(true), "ID", "Title",0);
            return View();
        }

        public ActionResult Details(long id)
        {
            if (ValidateUserPermissions(true, false) == false)
            {
                return RedirectToAction("Login", "Account");
            }
            EndPointIO io = UnitOfWork_Repositories.repoEndpointIOs.Find(id);
            return View(io);
        }
        #endregion

        #region PartialViewResult: Partial Views

        #region ListPV
        //Get List All
        [HttpGet]
        public PartialViewResult ListPV(string search, long endPointID, long ioTypeID, int page = 1, int recordsperpage = 0)
        {
         
            PagedList.IPagedList ios = UnitOfWork_Repositories.repoEndpointIOs.GetPagedList(search, endPointID, ioTypeID, page, Helpers.Configs.validateRecordsPerMaster(recordsperpage));
            return PartialView("_List", ios);
        }


        #endregion
        #endregion

        

    }
}