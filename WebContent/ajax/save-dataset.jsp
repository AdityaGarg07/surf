<%@page language="java" contentType="application/json; charset=UTF-8"%>
<%@page trimDirectiveWhitespaces="true"%>
<%@page language="java" import="edu.stanford.muse.webapp.JSPHelper"%>
<%@page import="org.json.JSONObject"%>
<%
    String json = request.getParameter ("json");
    GsonBuilder gson = new GsonBuilder();
    gson.create().
%>
<%@page language="java" contentType="application/json; charset=UTF-8"%>
<%@page trimDirectiveWhitespaces="true"%>
<%@page language="java" import="edu.stanford.muse.webapp.JSPHelper"%>
<%@page import="org.json.JSONObject"%><%@ page import="com.google.gson.GsonBuilder"%>
<%

        if (!session.isNew()) {
                session.removeAttribute("userKey");
                session.removeAttribute("emailDocs");
                session.removeAttribute("archive");
                session.removeAttribute("cacheDir");
                // cache dir?

                session.removeAttribute("museEmailFetcher");
                session.removeAttribute("statusProvider");

                JSPHelper.log.info ("session invalidated");
        //      session.invalidate();
        }
        else
        {
                JSPHelper.log.info ("session already invalidated");
                out.println ("session already invalidated");
        }

        JSONObject result = new JSONObject();
        result.put("status", 0);
        result.put("message", "Session ended");
        out.println (result.toString());
//      session.removeAttribute("mode");
%>
