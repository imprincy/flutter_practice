import 'package:flutter/material.dart';
import 'package:my_test/employee_Database/emp_model.dart';
import 'package:provider/provider.dart';

class EmployeeScreen extends StatelessWidget {
  const EmployeeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) {
        return ModelEmployee();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Welcome to the page Screen"),
          elevation: 8,
        ),
        body: Consumer<ModelEmployee>(
          builder: (BuildContext context, ModelEmployee value, Widget? child) {
            if(value.employee.isEmpty){
               value.addDataToDb();
            }
            return ListView.builder(
              itemCount: value.employee.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Name is:-${value.employee[index]["name"].toString()}"),
                        Text("Employee Id:-${value.employee[index]["emp_id"].toString()}"),
                        Text("Joining Date:-${value.employee[index]["joining"].toString()}"),
                        Text("Designation:-${value.employee[index]["designation"].toString()}"),
                        Text("Age:-${value.employee[index]["age"].toString()}"),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
