
package com.miniproject.CarRental.Model;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinColumns;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
<<<<<<< HEAD
@Table(name="reservation")
=======
@Table(name = "reservation")
>>>>>>> Feature/Ray
public class Reservation {

	@Id
	private int idReservation;
<<<<<<< HEAD
	private int idCustomer;
	private int idVehicle;
	private int idDriver;
	private String fromDate;
	private String toDate;
	private String duration;
	private String condition;
	private String fromLocation;
	private String toLocation;
	private String reservationDate;
=======
	@ManyToOne
	@JoinColumn(name = "idCustomer")
	private Customer customer;
	@ManyToOne
	@JoinColumn(name = "idVehicle")
	private Vehicle vehicle;
	@ManyToOne
	@JoinColumn(name = "idDriver")
	private Driver driver;
	private String rentDate;
	private String rentTime;
	private int rentDuration;
	private String rentStatus;
	private int totalPayment;

>>>>>>> Feature/Ray

	public Reservation() {

	}
<<<<<<< HEAD

	public Reservation(int idReservation, int idCustomer, int idVehicle, int idDriver, String fromDate, String toDate,
			String duration, String condition, String fromLocation, String toLocation, String reservationDate) {
		super();
		this.idReservation = idReservation;
		this.idCustomer = idCustomer;
		this.idVehicle = idVehicle;
		this.idDriver = idDriver;
		this.fromDate = fromDate;
		this.toDate = toDate;
		this.duration = duration;
		this.condition = condition;
		this.fromLocation = fromLocation;
		this.toLocation = toLocation;
		this.reservationDate = reservationDate;
	}

	public int getidReservation() {
=======
	
	
	public Reservation(int idReservation, Customer customer, Vehicle vehicle, Driver driver, String rentDate,
			String rentTime, int rentDuration, String rentStatus, int totalPayment) {
		super();
		this.idReservation = idReservation;
		this.customer = customer;
		this.vehicle = vehicle;
		this.driver = driver;
		this.rentDate = rentDate;
		this.rentTime = rentTime;
		this.rentDuration = rentDuration;
		this.rentStatus = rentStatus;
		this.totalPayment = totalPayment;
	}


	public int getIdReservation() {
>>>>>>> Feature/Ray
		return idReservation;
	}

	public void setIdReservation(int idReservation) {
		this.idReservation = idReservation;
	}
	
	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public Vehicle getVehicle() {
		return vehicle;
	}

	public void setVehicle(Vehicle vehicle) {
		this.vehicle = vehicle;
	}

	public Driver getDriver() {
		return driver;
	}

	public void setDriver(Driver driver) {
		this.driver = driver;
	}

	public String getRentDate() {
		return rentDate;
	}

	public void setRentDate(String rentDate) {
		this.rentDate = rentDate;
	}

	public String getRentTime() {
		return rentTime;
	}

	public void setRentTime(String rentTime) {
		this.rentTime = rentTime;
	}

	public int getRentDuration() {
		return rentDuration;
	}

	public void setRentDuration(int rentDuration) {
		this.rentDuration = rentDuration;
	}

	public String getRentStatus() {
		return rentStatus;
	}

	public void setRentStatus(String rentStatus) {
		this.rentStatus = rentStatus;
	}

	public int getTotalPayment() {
		return totalPayment;
	}

	public void setTotalPayment(int totalPayment) {
		this.totalPayment = totalPayment;
	}

<<<<<<< HEAD
	public String getreservationDate() {
		return reservationDate;
	}

	public void setreservationDate(String reservationDate) {
		this.reservationDate = reservationDate;
	}

	@Override
	public String toString() {
		return "Reservation [idReservastion=" + idReservation + ", idCustomer=" + idCustomer + ", idVehicle="
				+ idVehicle + ", idDriver=" + idDriver + ", fromDate=" + fromDate + ", toDate=" + toDate + ", duration="
				+ duration + ", condition=" + condition + ", fromLocation=" + fromLocation + ", toLocation="
				+ toLocation + ", reservationDate=" + reservationDate + "]";
	}
=======




	@Override
	public String toString() {
		return "Reservation [idReservation=" + idReservation + ", customer=" + customer + ", vehicle=" + vehicle
				+ ", driver=" + driver + ", rentDate=" + rentDate + ", rentTime=" + rentTime + ", rentDuration="
				+ rentDuration + ", rentStatus=" + rentStatus + ", totalPayment=" + totalPayment + "]";
	}
	
	
	
	
	
>>>>>>> Feature/Ray
}


