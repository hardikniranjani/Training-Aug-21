"use strict";
exports.__esModule = true;
//  Create user array 
var users = [];
// add user 
function addUsers(id, userName, userPhone, userCity) {
    users.push({ Id: id, UserName: userName, UserPhoneNumber: userPhone, UserCity: userCity });
}
// show user data 
function showUser() {
    console.log("users Data");
    console.log(users);
    console.log("\n\n");
}
// User data
addUsers(1, "Ravindra", 9898656632, "Rajkot");
addUsers(2, "Kohli", 9898845568, "Mumbai");
addUsers(3, "Rahul", 7778865330, "Delhi");
addUsers(4, "Dhoni", 9898445221, "Chennai");
addUsers(5, "Yuvraj", 7745698562, "Delhi");
addUsers(6, "Sehwag", 7658945230, "Mumbai");
addUsers(7, "Rishabh", 7778956330, "Ahmedabad");
// userdata
showUser();
//************************************************************************************** 
//************************************************************************************** 
// Create Restaurant array 
var restaurant = [];
// add Restaurant
function addRestaurant(id, rName, Tables, country) {
    restaurant.push({ Id: id, RestaurantName: rName, NumberOfTables: Tables, Country: country });
}
// show Restaurant
function showRestaurant() {
    console.log("restaurant Data");
    console.log(restaurant);
    console.log("\n\n");
}
// restaurant data
addRestaurant(1, "The Spice Delight", 150, "India");
addRestaurant(2, "Indian Masala House ", 70, "India");
addRestaurant(3, "Tandoori Palace ", 90, "India");
addRestaurant(4, "Restaurant Moor Hall", 95, "UK");
addRestaurant(5, "The Waterside Inn", 80, "UK");
addRestaurant(6, "Cupbop", 200, "USA");
addRestaurant(7, "Manchu Wok", 90, "USA");
addRestaurant(8, "Panda Express", 100, "USA");
// show data 
showRestaurant();
//************************************************************************************** 
//************************************************************************************** 
// create tableData array
var tableData = [];
// add tables in restaurant
function addTables(id, RestId, TCapacity, RestName) {
    tableData.push({ Id: id, RestaurantId: RestId, TableCapacity: TCapacity, RestaurantName: RestName });
}
// show tables
function showTables() {
    console.log("tableData Data");
    console.log(tableData);
    console.log("\n\n");
}
// tables data 
addTables(1, 1, 6, "The Spice Delight");
addTables(2, 1, 4, "The Spice Delight");
addTables(3, 1, 4, "The Spice Delight");
addTables(4, 5, 6, "The Waterside Inn");
addTables(5, 5, 6, "The Waterside Inn");
addTables(6, 5, 4, "The Waterside Inn");
addTables(7, 8, 6, "Panda Express");
addTables(8, 8, 2, "Panda Express");
addTables(9, 8, 4, "Panda Express");
// show data 
showTables();
//************************************************************************************** 
//************************************************************************************** 
// create BookingData array
var bookingsData = [];
// add BookingData 
function addBookingData(id, restId, TId, Booking, UId, UName) {
    bookingsData.push({ Id: id, RestaurantId: restId, TableId: TId, BookingTime: Booking, UserId: UId, UserName: UName });
}
// show BookingData
function showBookingData() {
    console.log("Booking Data");
    console.log(bookingsData);
    console.log("\n\n");
}
// booking data
addBookingData(1, 1, 3, new Date("11/30/2021"), 1, "Ravindra");
addBookingData(2, 5, 4, new Date("12/03/2021"), 2, "Kohli");
addBookingData(3, 5, 6, new Date("12/03/2021"), 3, "Rahul");
addBookingData(4, 8, 7, new Date("12/05/2021"), 4, "Dhoni");
addBookingData(5, 8, 8, new Date("12/05/2021"), 5, "Yuvraj");
// booking data 
showBookingData();
//************************************************************************************** 
//************************************************************************************** 
//************************************************************************************** 
//************************************************************************************** 
//(1)*** Provide the list of restaurants in the country so that the user can choose accordingly.
var restaurantCountry = [];
function addRestaurantInCountry(id, rName, Tables, country) {
    restaurantCountry.push({ Id: id, RestaurantName: rName, NumberOfTables: Tables, Country: country });
}
function restaurantInCountry(countryName) {
    restaurant.filter(function (r) {
        if (r.Country == countryName) {
            addRestaurantInCountry(r.Id, r.RestaurantName, r.NumberOfTables, r.Country);
        }
    });
    console.log("restaurantCountry Data");
    console.log(restaurantCountry);
    console.log("\n\n");
}
restaurantInCountry("India");
//(2)** Provide the list of tables available for online reservation at different dining rooms in the restaurant.
