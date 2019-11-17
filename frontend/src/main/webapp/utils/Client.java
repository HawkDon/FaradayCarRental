package utils;

import interfaces.IBooking;
import interfaces.ICars;

import java.net.MalformedURLException;
import java.rmi.Naming;
import java.rmi.NotBoundException;
import java.rmi.RemoteException;
import java.rmi.registry.LocateRegistry;
import java.rmi.registry.Registry;

public class Client {

    private static String iBookingEndpoint = "//backend/iBookings";
    private static String iCarsEndpoint = "//backend/iCars";


    public static IBooking getIBooking() throws RemoteException, NotBoundException, MalformedURLException {
        IBooking iBooking = (IBooking) Naming.lookup(iBookingEndpoint);

        return iBooking;
    }

    public static ICars getICars() {
        try {
            return (ICars) Naming.lookup(iCarsEndpoint);
        } catch (Exception e) {
            System.out.println("Failed to connect to server");
        }

        return null;
    }
}
