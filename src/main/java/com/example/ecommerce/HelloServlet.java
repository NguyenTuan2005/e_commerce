package com.example.ecommerce;

import java.io.*;

import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {
    private String message;

    public void init() {
        message = "Hello World!";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");

        // Hello
        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<h1>" + message + "</h1>");
        out.println("</body></html>");
    }

    public void destroy() {
    }
}

class Java{
    private final String st  = "9/28/2025 nguyen huu duy";

    public static void main(String[] args) {
        try (MyResource myResource = new MyResource()){
            System.out.println(myResource);

        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            System.out.println("finally ");
        }
        System.out.println("I'm gay");
    }
}

class MyResource implements AutoCloseable {


    @Override
    public void close() throws Exception {
        System.out.println("Closing MyResource!");
    }

    public String toString(){
        return "Hello World!";
    }
}

