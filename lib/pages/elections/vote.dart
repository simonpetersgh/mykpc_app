import 'package:flutter/material.dart';
import 'package:mykpc_app/pages/elections/votes.dart';

class VotingPortal extends StatefulWidget {
  const VotingPortal({super.key});

  @override
  State<VotingPortal> createState() => _VotingPortalState();
}

class _VotingPortalState extends State<VotingPortal> {
  @override
  void initState() {
    // initalizing votes
    presidnetVotes;
    presSelected;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Voting Portal"),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Welcome to 2024 KPC Election Portal"),
              const SizedBox(height: 20),
              const Text(
                  "Select your preferred candidate for each category to vote."),
              const SizedBox(height: 20),
              // CATEGORIES
              // Presidnets

              const Text("PRESIDENT CATEGORY"),

              SizedBox(
                height: 310,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    candidateBox("1", "Desmond Akuayi", presSelected),
                    candidateBox("2", "Bernard Asante", presSelected),
                    candidateBox("3", "John Mark", presSelected),
                  ],
                ),
              ),

              // VICE PRSIDENT CATEGORY
              const Text("PRESIDENT CATEGORY"),

              candidateBox("1", "Desmond Akuayi", presSelected),
              candidateBox("2", "Bernard Asante", presSelected),
              candidateBox("3", "John Mark", presSelected),
            ],
          ),
        ),
      ),
    );
  }

  // candidate card

  Widget candidateBox(
      String candidateNumber, String candidateName, bool presSel) {
    return GestureDetector(
      onTap: () {
        setState(() {
          debugPrint("Selected candidate $candidateNumber");
          if (presSelected) {
            presSelected = !presSelected;
          } else {
            presSelected = true;
          }
          switch (candidateNumber) {
            case '1':
              {
                presSelected = true;
                // pres1selected = true;
                // pres2selected = false;
                // pres3selected = false;
              }
              break;
            case '2':
              {
                // pres1selected = false;
                // pres2selected = true;
                // pres3selected = false;
              }
              break;
            case '3':
              {
                pres1selected = false;
                pres2selected = false;
                pres3selected = true;
              }
          }

          if (presidnetVotes.contains(candidateNumber)) {
            debugPrint("Voted already");
          } else {
            presidnetVotes.add(candidateNumber);
          }

          debugPrint(
              "Total votes is now ${presidnetVotes.length} as $presidnetVotes");
        });
      },

      // Widget
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          width: 300,
          decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: presSelected ? presSelectedCol : Colors.redAccent,
              ),
              borderRadius: BorderRadius.circular(4)),
          child: Column(
            children: [
              // image
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(
                  "assets/images/kpc-23-acc.jpg",
                ),
              ),

              // candidate name
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  candidateName,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
