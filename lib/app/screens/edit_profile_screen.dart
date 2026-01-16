import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'package:bebasaja/app/stores/edit_profile_store.dart';
import 'package:bebasaja/domain/models/region.dart';
import 'package:bebasaja/infra/region/region_service.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final _formKey = GlobalKey<FormState>();
  final EditProfileStore editProfileStore = EditProfileStore(RegionService());

  @override
  void initState() {
    super.initState();

    _loadProvinces();
  }

  Future<void> _loadProvinces() async {
    if (mounted) {
      await editProfileStore.loadProvinces();
    }
  }

  void _handleSubmitForm(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      // Handle profile update logic here
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Updating Profile')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Edit your profile',
                style: Theme.of(context).textTheme.headlineSmall,
              ),

              const SizedBox(height: 20.0),

              Observer(
                builder: (context) => Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: TextField(
                              onChanged: (value) {
                                editProfileStore.setFullName(value);
                              },
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Full Name',
                              ),
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 20.0),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: DropdownMenu<Region>(
                              dropdownMenuEntries: editProfileStore
                                  .availableProvinces
                                  .map(
                                    (region) => DropdownMenuEntry<Region>(
                                      value: region,
                                      label: region.name,
                                    ),
                                  )
                                  .toList(),
                              hintText: 'Province',
                              inputDecorationTheme: const InputDecorationTheme(
                                border: InputBorder.none,
                              ),
                              onSelected: (value) {
                                editProfileStore.setProvince(value);
                              },
                              width: double.infinity,
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 20.0),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: editProfileStore.isRegionEnabled
                                ? Colors.grey[100]
                                : Colors.grey[300],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: DropdownMenu<Region>(
                              enabled: editProfileStore.isRegionEnabled,
                              dropdownMenuEntries: editProfileStore
                                  .availableRegencies
                                  .map(
                                    (region) => DropdownMenuEntry<Region>(
                                      value: region,
                                      label: region.name,
                                    ),
                                  )
                                  .toList(),
                              hintText: 'Regency',
                              inputDecorationTheme: const InputDecorationTheme(
                                border: InputBorder.none,
                              ),
                              onSelected: (value) {
                                editProfileStore.setRegency(value);
                              },
                              width: double.infinity,
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 20.0),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 20.0,
                              right: 20.0,
                            ),
                            child: TextField(
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Address',
                              ),
                              maxLines: null,
                              onChanged: (value) {
                                editProfileStore.setAddress(value);
                              },
                              keyboardType: TextInputType.multiline,
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 20.0),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: GestureDetector(
                            onTap: () {
                              _handleSubmitForm(context);
                            },
                            child: Center(
                              child: Text(
                                'Update Profile',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
