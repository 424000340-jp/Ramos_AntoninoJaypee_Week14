import 'package:flutter/material.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).colorScheme.primary;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Class Schedule',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Layered Banner Card using Stack, Positioned, and Image.asset
            ClipRRect(
              borderRadius: BorderRadius.circular(14.0),
              child: Stack(
                children: [
                  Image.asset(
                    'assets/images/student_banner.png',
                    width: double.infinity,
                    height: 135,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    width: double.infinity,
                    height: 135,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          primaryColor.withValues(alpha: 0.65),
                          primaryColor.withValues(alpha: 0.92),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 12,
                    right: 12,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        'AY 2026-2027',
                        style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 11,
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                    bottom: 14,
                    left: 16,
                    right: 16,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'BSIT 3rd Year — Enrolled Subjects',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 2),
                        Text(
                          'Student ID: 424000340 • NTC Manila',
                          style: TextStyle(color: Colors.white70, fontSize: 12.5),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            _buildCourseCard(
              primaryColor: primaryColor,
              code: 'PC16',
              title: 'Mobile Development with Lab',
              schedule: 'Tue / Fri • 10:00 AM - 1:00 PM',
              room: 'Lab 304',
            ),
            const SizedBox(height: 12),
            _buildCourseCard(
              primaryColor: primaryColor,
              code: 'CC15',
              title: 'Python Programming 2',
              schedule: 'Mon / Thu • 1:00 PM - 3:00 PM',
              room: 'Room 208',
            ),
            const SizedBox(height: 12),
            _buildCourseCard(
              primaryColor: primaryColor,
              code: 'NET12',
              title: 'IT Elective 2',
              schedule: 'Sat • 1:00 PM - 4:00 PM',
              room: 'Cisco Lab 2',
            ),

            const SizedBox(height: 24),

            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.download),
              label: const Text(
                'Download Class Schedule',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget _buildCourseCard({
    required Color primaryColor,
    required String code,
    required String title,
    required String schedule,
    required String room,
  }) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: primaryColor.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  code,
                  style: TextStyle(
                    color: primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ),
              const Spacer(),
              Icon(Icons.meeting_room_outlined, size: 16, color: Colors.grey.shade600),
              const SizedBox(width: 4),
              Text(
                room,
                style: TextStyle(
                  fontSize: 12.5,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey.shade700,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 6),
          Row(
            children: [
              Icon(Icons.access_time, size: 15, color: primaryColor),
              const SizedBox(width: 6),
              Text(
                schedule,
                style: TextStyle(fontSize: 13, color: Colors.grey.shade700),
              ),
            ],
          ),
        ],
      ),
    );
  }
}