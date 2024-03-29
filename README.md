# Custom Dropdown Button

CustomDropDownButton is a custom dropdown button widget in Flutter designed to work with any type T. It allows you to populate the dropdown items from outside and provides customization options for item display and handling.

## Features

* Create a dropdown button with a list of custom items.
* Set an initial value for the dropdown.
* Customizable display string for each item.
* Callback function for when the value of the dropdown changes.
* Title display above the dropdown button. // optional 

## Usage
1. Create an instance of CustomDropDownButton:
   
<img width="681" alt="Screenshot 2024-03-07 at 9 04 06 AM" src="https://github.com/KaushalGautam080/CustomDropdown_Button/assets/101984287/097383c4-3943-4144-9b79-a0e9c7e63bfc">

* <b>initialValue:</b> The initial selected value of the dropdown.
* <b>itemList:</b> List of items to populate the dropdown.
* <b>displayString:</b> A function that returns the display string for each item. If not provided, toString() will be used.
* <b>title:</b> Title to display above the dropdown button.
* <b>onChangedValue: </b>Optional callback function that will be called when the dropdown value changes.

2. When the <b>onChangedValue</b> callback is provided, it will be called with the selected value whenever the user selects an item from the dropdown.
3. Customize the <b>itemList</b> and <b>displayString</b> to fit the specific needs of your application.

## Example
  Here's an example of how you might use <b>CustomDropDownButton</b> for String Type:
<img width="536" alt="Screenshot 2024-03-07 at 9 09 30 AM" src="https://github.com/KaushalGautam080/CustomDropdown_Button/assets/101984287/6dfdf22b-5567-4261-bf9c-6b062cb21ee8">
* In this example, the dropdown button will display a list of fruits, with 'Apple' selected initially. When the user selects a different fruit, the onChangedValue callback will update the selectedFruit variable.
  
 Here's an example where we have a <b>Month</b> class with <b>id</b> and <b>value</b>, and we'll pass a list of Month objects to the <b>CustomDropDownButton</b> to create a dropdown of months:


<p >
  <img width="345" alt="Screenshot 2" src="https://github.com/KaushalGautam080/CustomDropdown_Button/assets/101984287/b3fad61a-379f-4e16-8030-700e51e61619">
</p>

<p >
  <img width="435" alt="Screenshot 3" src="https://github.com/KaushalGautam080/CustomDropdown_Button/assets/101984287/2fe9cd5d-4230-41cc-96ac-4079a58f740b">
</p>
 In this Example:
 * We have a <b>Month</b>b class with id and value attributes representing the month's unique identifier and name.

 This README provides an overview of the <b>CustomDropDownButton</b> class and how to use it in your Flutter applications. Customize the parameters and callbacks according to your specific requirements for a flexible and reusable dropdown button.



