package controller;

import model.Customer;
import service.CustomerListImpl;
import service.CustomerService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CustomerServlet",urlPatterns = "/customer")
public class CustomerServlet extends HttpServlet {

  private CustomerService customerService = new CustomerListImpl();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        int id=Integer.parseInt(request.getParameter("id"));
//        System.out.println(id);
////        customerList.remove(new Customer(id));
//        response.sendRedirect("/customer");
        String action=request.getParameter("action");
        if(action==null){
            action="";
        }
        switch (action){
            case "create":
              createCustomer(request,response);
              break;
            case "delete":
                delete(request,response);break;
            case "update":
                updateCustomer(request,response);break;
            case "login":
                sesstion(request,response);
            default:GetCustomerList(request,response);
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action=request.getParameter("action");
        if(action==null){
            action="";
        }
        switch (action){
            case "create":
                request.getRequestDispatcher("AddCustomer.jsp").forward(request,response);break;
            case "update":
                showEditForm(request,response);
            default:GetCustomerList(request,response);
        }

    }

    public void delete(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
        int id=Integer.parseInt(request.getParameter("id"));
        System.out.println(id);
        customerService.deleteCustomer(id);
        response.sendRedirect("/customer");
    }

    public void GetCustomerList(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
        List<Customer>customerList=customerService.getCustomerList();
        request.setAttribute("customerList",customerList);
        request.getRequestDispatcher("/DisplayCustomer.jsp").forward(request,response);
    }
    public void createCustomer(HttpServletRequest request,HttpServletResponse response) throws IOException{
        int id=Integer.parseInt(request.getParameter("id"));
        String name=request.getParameter("name");
        String birth=request.getParameter("birth");
        Integer gender=Integer.parseInt(request.getParameter("gender"));
        String idcard=request.getParameter("idcard");
        String phone=request.getParameter("phone");
        String email=request.getParameter("email");
        String address=request.getParameter("address");
//        String dichvu=request.getParameter("dichvu");
        Customer customer=new Customer(id,name,birth,gender,idcard,phone,email,address);
        customerService.createCustomer(customer);
        response.sendRedirect("/customer");
    }
    public void showEditForm(HttpServletRequest request,HttpServletResponse response){
            int id=Integer.parseInt(request.getParameter("id"));
            System.out.println(id);
            Customer customer= customerService.selectCustomer(id);
            request.setAttribute("customer",customer);
        try {
            request.getRequestDispatcher("/editCustomer.jsp").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    public  void updateCustomer(HttpServletRequest request,HttpServletResponse response){
        int id=Integer.parseInt(request.getParameter("id"));
        String name=request.getParameter("name");
        String birth=request.getParameter("birth");
        Integer gender=Integer.parseInt(request.getParameter("gender"));
        String idcard=request.getParameter("idcard");
        String phone=request.getParameter("phone");
        String email=request.getParameter("email");
        String address=request.getParameter("address");
//        String dichvu=request.getParameter("dichvu");
        Customer customer=new Customer(id,name,birth,gender,idcard,phone,email,address);
        customerService.updateCustomer(customer);
        try {
            response.sendRedirect("/customer");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    public  void sesstion(HttpServletRequest request,HttpServletResponse response){
        String username=request.getParameter("user");
        String password=request.getParameter("passs");
        HttpSession session=request.getSession();
        session.setAttribute("us",username);
        session.setAttribute("pw",password);
        try {
            request.getRequestDispatcher("DisplayCustomer.jsp").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}

