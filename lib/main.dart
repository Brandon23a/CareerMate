import 'package:flutter/material.dart';

void main() {
  runApp(const CareerMateApp());
}

class CareerMateApp extends StatelessWidget {
  const CareerMateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CareerMate',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF4F6FB),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF246BFD)),
        textTheme: const TextTheme(bodyMedium: TextStyle(fontSize: 14)),
      ),
      home: const HomeScreen(),
    );
  }
}

/* -------------------------------------------------------------------------- */
/*  MODELS                                                                    */
/* -------------------------------------------------------------------------- */

class Job {
  final String title;
  final String description;
  final String minSalary;
  final String maxSalary;
  final String requirements;

  Job({
    required this.title,
    required this.description,
    required this.minSalary,
    required this.maxSalary,
    required this.requirements,
  });

  Job copyWith({
    String? title,
    String? description,
    String? minSalary,
    String? maxSalary,
    String? requirements,
  }) {
    return Job(
      title: title ?? this.title,
      description: description ?? this.description,
      minSalary: minSalary ?? this.minSalary,
      maxSalary: maxSalary ?? this.maxSalary,
      requirements: requirements ?? this.requirements,
    );
  }
}

class Candidate {
  final String name;
  final String location;
  final String applicantId;
  final String position;
  final String status; // Pending / Hired / Rejected / Shortlisted
  final String summary;
  final String email;
  final String phone;
  final String technicalSkills;
  final String experience;
  final String additionalInfo;

  Candidate({
    required this.name,
    required this.location,
    required this.applicantId,
    required this.position,
    required this.status,
    required this.summary,
    required this.email,
    required this.phone,
    required this.technicalSkills,
    required this.experience,
    required this.additionalInfo,
  });

  Candidate copyWith({
    String? name,
    String? location,
    String? applicantId,
    String? position,
    String? status,
    String? summary,
    String? email,
    String? phone,
    String? technicalSkills,
    String? experience,
    String? additionalInfo,
  }) {
    return Candidate(
      name: name ?? this.name,
      location: location ?? this.location,
      applicantId: applicantId ?? this.applicantId,
      position: position ?? this.position,
      status: status ?? this.status,
      summary: summary ?? this.summary,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      technicalSkills: technicalSkills ?? this.technicalSkills,
      experience: experience ?? this.experience,
      additionalInfo: additionalInfo ?? this.additionalInfo,
    );
  }
}

/* -------------------------------------------------------------------------- */
/*  HOME SCREEN                                                               */
/* -------------------------------------------------------------------------- */

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Sample data
  final List<Job> _jobs = [
    Job(
      title: 'Software Developer',
      description:
          'We are looking for a skilled Software Developer to design, build, and maintain high-quality software applications. The ideal candidate will write clean code, troubleshoot issues, and work with the team to deliver reliable and efficient solutions.',
      minSalary: 'RM5,000',
      maxSalary: 'RM6,000',
      requirements: '''
• Proficiency in programming languages (e.g., Python, Java)
• Experience with databases and version control (e.g., Git)
• Strong problem-solving skills
• Good communication and teamwork abilities
• Degree in Computer Science or related field (preferred)
''',
    ),
    Job(
      title: 'Software Maintenance',
      description:
          'Maintain and improve existing software systems, ensuring stability and performance over time.',
      minSalary: 'RM4,000',
      maxSalary: 'RM5,000',
      requirements: '''
• Experience with debugging and bug fixing
• Familiarity with legacy systems
• Good documentation skills
''',
    ),
  ];

  final List<Candidate> _candidates = [
    Candidate(
      name: 'Tommy',
      location: 'Subang Jaya',
      applicantId: 'CM-001',
      position: 'Software Developer',
      status: 'Pending',
      summary: 'Expert in Python, Java and JavaScript.',
      email: 'tommy@email.com',
      phone: '+60 1X-XXX XXXX',
      technicalSkills: '''
• Languages: Python, Java, JavaScript (ES6+)
• Frameworks: Django, Flask, Spring Boot, React
• Databases: MySQL, PostgreSQL, MongoDB
• Tools & Platforms: Git, Docker, Jenkins, AWS, VS Code, IntelliJ IDEA
• Others: RESTful APIs, Unit Testing, CI/CD, Agile Development
''',
      experience: '''
Software Engineer | Shopee                           Jan 2020 – Jan 2023

• Designed and developed scalable backend applications.
• Implemented RESTful APIs and integrated third-party services.
• Collaborated with cross-functional teams to deliver high-quality features.
• Deployed and maintained cloud-based applications using AWS and Docker.
''',
      additionalInfo: '''
• Experience: 5+ years in software development
• Expected Salary: RM 8,000–10,000 (negotiable)
• Availability: Immediate
''',
    ),
    Candidate(
      name: 'Sarah',
      location: 'Klang',
      applicantId: 'CM-002',
      position: 'Software Developer',
      status: 'Hired',
      summary: 'Skilled in Agile software development.',
      email: 'sarah@email.com',
      phone: '+60 1X-XXX XXXX',
      technicalSkills: 'Agile, Scrum, React, Node.js, REST APIs.',
      experience:
          'Worked as full-stack developer focusing on SPA and RESTful backend.',
      additionalInfo: 'Strong team player with mentoring experience.',
    ),
    Candidate(
      name: 'Daniel',
      location: 'Puchong',
      applicantId: 'CM-003',
      position: 'Software Developer',
      status: 'Pending',
      summary: 'Proficient with MySQL and MongoDB.',
      email: 'daniel@email.com',
      phone: '+60 1X-XXX XXXX',
      technicalSkills: 'SQL, NoSQL, data migration, performance tuning.',
      experience: 'Database engineer in fintech company for 3 years.',
      additionalInfo: 'Looking for backend / database focused roles.',
    ),
    Candidate(
      name: 'John',
      location: 'Rawang',
      applicantId: 'CM-004',
      position: 'Software Developer',
      status: 'Pending',
      summary: 'Experienced using Git for version control.',
      email: 'john@email.com',
      phone: '+60 1X-XXX XXXX',
      technicalSkills: 'Git, GitHub, CI pipelines, branching strategies.',
      experience: 'Worked on multiple team projects with Git workflows.',
      additionalInfo: 'Interested in DevOps and tooling.',
    ),
    Candidate(
      name: 'Amy',
      location: 'Kajang',
      applicantId: 'CM-005',
      position: 'Software Developer',
      status: 'Rejected',
      summary: 'Strong in testing and debugging software.',
      email: 'amy@email.com',
      phone: '+60 1X-XXX XXXX',
      technicalSkills: 'Unit testing, integration testing, QA processes.',
      experience: 'Software tester transitioning into developer role.',
      additionalInfo: 'Open to junior developer / QA engineer positions.',
    ),
  ];

  int _currentNavIndex = 2; // Home in the middle

  /* ----------------------- Job posting / editing / delete ------------------ */

  void _openPostJob() async {
    final Job? newJob = await Navigator.of(context).push<Job>(
      MaterialPageRoute(
        builder: (_) => JobFormScreen(
          screenTitle: 'Post Job',
          headerTitle: 'New Job',
          headerSubtitle: 'Please fill in the requirements details.',
          primaryButtonLabel: 'Post Job',
          initialJob: Job(
            title: 'Software Developer',
            description:
                'We are looking for a skilled Software Developer to design, build, and maintain high-quality software applications. The ideal candidate will write clean code, troubleshoot issues, and work with the team to deliver reliable and efficient solutions.',
            minSalary: 'RM4,000',
            maxSalary: 'RM5,000',
            requirements: '''
• Proficiency in programming languages (e.g., Python, Java)
• Experience with databases and version control (e.g., Git)
• Strong problem-solving skills
• Good communication and teamwork abilities
• Degree in Computer Science or related field (preferred)
''',
          ),
        ),
      ),
    );

    if (newJob != null) {
      setState(() {
        _jobs.add(newJob);
      });

      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(const SnackBar(content: Text('Job posted.')));
      }
    }
  }

  void _openEditJob(Job job) async {
    final Job? updatedJob = await Navigator.of(context).push<Job>(
      MaterialPageRoute(
        builder: (_) => JobFormScreen(
          screenTitle: 'Edit Job',
          headerTitle: 'Job Details',
          headerSubtitle: 'Please edit accordingly.',
          primaryButtonLabel: 'Save Changes',
          initialJob: job,
        ),
      ),
    );

    if (updatedJob != null) {
      setState(() {
        final index = _jobs.indexOf(job);
        if (index != -1) {
          _jobs[index] = updatedJob;
        }
      });

      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(const SnackBar(content: Text('Job updated.')));
      }
    }
  }

  void _confirmDelete(Job job) async {
    final bool? confirmed = await showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Delete Job'),
          content: Text('Are you sure you want to delete "${job.title}"?'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: const Text('Delete', style: TextStyle(color: Colors.red)),
            ),
          ],
        );
      },
    );

    if (confirmed == true) {
      setState(() {
        _jobs.remove(job);
      });

      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Deleted "${job.title}".')));
      }
    }
  }

  /* --------------------------- Bottom nav handling ------------------------- */

  void _onBottomNavTap(int index) {
    if (index == _currentNavIndex) return;

    setState(() {
      _currentNavIndex = index;
    });

    if (index == 0) {
      // Candidate tab → Candidate Management screen
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => CandidateManagementScreen(candidates: _candidates),
        ),
      );
    }
    // Other tabs (Career / Analysis / Profile) are placeholders for now
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.3,
        centerTitle: true,
        title: const Text(
          'Home',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Color(0xFF1C274C),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top action buttons
              Row(
                children: [
                  Expanded(
                    child: HomeActionButton(
                      icon: Icons.post_add_outlined,
                      label: 'Post Job',
                      onTap: _openPostJob,
                    ),
                  ),
                  const SizedBox(width: 12),
                  const Expanded(
                    child: HomeActionButton(
                      icon: Icons.list_alt_outlined,
                      label: 'Edit List',
                    ),
                  ),
                  const SizedBox(width: 12),
                  const Expanded(
                    child: HomeActionButton(
                      icon: Icons.history,
                      label: 'History',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Current Job List
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Current Job List',
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF1C274C),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),

              ..._jobs.map((job) {
                final isFirst = job == _jobs.first;
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: const Color(0xFFE2E6F0)),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 10,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            job.title,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        TextButton(onPressed: () {}, child: const Text('View')),
                        const SizedBox(width: 4),
                        TextButton(
                          onPressed: isFirst ? () => _openEditJob(job) : null,
                          child: Text(
                            'Edit',
                            style: TextStyle(
                              color: isFirst
                                  ? theme.colorScheme.primary
                                  : Colors.grey,
                            ),
                          ),
                        ),
                        IconButton(
                          tooltip: 'Delete job',
                          icon: const Icon(
                            Icons.delete_outline,
                            color: Colors.redAccent,
                            size: 20,
                          ),
                          onPressed: () => _confirmDelete(job),
                        ),
                      ],
                    ),
                  ),
                );
              }),

              const SizedBox(height: 20),

              // AI Recommendation header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'AI Recommendation',
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF1C274C),
                    ),
                  ),
                  Text(
                    'View more...',
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.primary,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),

              // AI Recommendation list (show first 3)
              ..._candidates
                  .take(3)
                  .map(
                    (candidate) => Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: CandidateCard(candidate: candidate),
                    ),
                  ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentNavIndex,
        onTap: _onBottomNavTap,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: theme.colorScheme.primary,
        unselectedItemColor: const Color(0xFF9BA4B5),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.people_outline),
            label: 'Candidate',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work_outline),
            label: 'Career',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart_outlined),
            label: 'Analysis',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

/* -------------------------------------------------------------------------- */
/*  HOME WIDGETS                                                              */
/* -------------------------------------------------------------------------- */

class HomeActionButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback? onTap;

  const HomeActionButton({
    super.key,
    required this.icon,
    required this.label,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(16),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, size: 22, color: const Color(0xFF246BFD)),
              const SizedBox(height: 6),
              Text(
                label,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF1C274C),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CandidateCard extends StatelessWidget {
  final Candidate candidate;

  const CandidateCard({super.key, required this.candidate});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 8,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      padding: const EdgeInsets.all(14),
      child: Row(
        children: [
          CircleAvatar(
            radius: 24,
            backgroundColor: const Color(0xFFE6EEFF),
            child: Text(
              candidate.name.substring(0, 1),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xFF246BFD),
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  candidate.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  'Applicant ID: ${candidate.applicantId}',
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: const Color(0xFF9BA4B5),
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  'Position Applied: ${candidate.position}',
                  style: theme.textTheme.bodySmall,
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),
          Column(
            children: [
              Row(
                children: [
                  _smallCircleIcon(
                    icon: Icons.close,
                    background: const Color(0xFFFFE6E6),
                    iconColor: const Color(0xFFE53935),
                  ),
                  const SizedBox(width: 6),
                  _smallCircleIcon(
                    icon: Icons.favorite,
                    background: const Color(0xFFFFE6F2),
                    iconColor: const Color(0xFFE91E63),
                  ),
                  const SizedBox(width: 6),
                  _smallCircleIcon(
                    icon: Icons.check,
                    background: const Color(0xFFE6F7EC),
                    iconColor: const Color(0xFF2E7D32),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              _smallCircleIcon(
                icon: Icons.chat_bubble_outline,
                background: const Color(0xFFE6EEFF),
                iconColor: const Color(0xFF246BFD),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _smallCircleIcon({
    required IconData icon,
    required Color background,
    required Color iconColor,
  }) {
    return CircleAvatar(
      radius: 13,
      backgroundColor: background,
      child: Icon(icon, size: 16, color: iconColor),
    );
  }
}

/* -------------------------------------------------------------------------- */
/*  CANDIDATE MANAGEMENT SCREEN                                               */
/* -------------------------------------------------------------------------- */

class CandidateManagementScreen extends StatefulWidget {
  final List<Candidate> candidates;

  const CandidateManagementScreen({super.key, required this.candidates});

  @override
  State<CandidateManagementScreen> createState() =>
      _CandidateManagementScreenState();
}

class _CandidateManagementScreenState extends State<CandidateManagementScreen> {
  late List<Candidate> _candidates;

  @override
  void initState() {
    super.initState();
    // Make a local copy so we can call setState here
    _candidates = List<Candidate>.from(widget.candidates);
  }

  void _updateCandidateStatus(Candidate updated) {
    setState(() {
      final index = _candidates.indexWhere(
        (candidate) => candidate.applicantId == updated.applicantId,
      );
      if (index != -1) {
        _candidates[index] = updated;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: const Color(0xFFF4F6FB),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.3,
        centerTitle: true,
        title: const Text(
          'Candidate Management',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Color(0xFF1C274C),
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, size: 18),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            // Filters
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 12, 16, 8),
              child: Column(
                children: [
                  _RoundedField(
                    child: Row(
                      children: const [
                        Icon(Icons.search, size: 20, color: Color(0xFF9BA4B5)),
                        SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            'Type to filter...',
                            style: TextStyle(
                              color: Color(0xFF9BA4B5),
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: _RoundedField(
                          child: Row(
                            children: const [
                              Expanded(
                                child: Text(
                                  'Software Developer',
                                  style: TextStyle(fontSize: 13),
                                ),
                              ),
                              Icon(Icons.keyboard_arrow_down_rounded, size: 18),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: _RoundedField(
                          child: Row(
                            children: const [
                              Expanded(
                                child: Text(
                                  'Selangor',
                                  style: TextStyle(fontSize: 13),
                                ),
                              ),
                              Icon(Icons.keyboard_arrow_down_rounded, size: 18),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 4),
            Expanded(
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                itemCount: _candidates.length,
                separatorBuilder: (_, __) => const SizedBox(height: 10),
                itemBuilder: (context, index) {
                  final candidate = _candidates[index];
                  return CandidateListTile(
                    candidate: candidate,
                    onUpdateStatus: _updateCandidateStatus,
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0, // Candidate tab
        onTap: (index) {
          if (index == 2) {
            // Home
            Navigator.of(context).popUntil((route) => route.isFirst);
          }
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: theme.colorScheme.primary,
        unselectedItemColor: const Color(0xFF9BA4B5),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.people_outline),
            label: 'Candidate',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work_outline),
            label: 'Career',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart_outlined),
            label: 'Analysis',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

class CandidateListTile extends StatelessWidget {
  final Candidate candidate;
  final ValueChanged<Candidate> onUpdateStatus;

  const CandidateListTile({
    super.key,
    required this.candidate,
    required this.onUpdateStatus,
  });

  Color _statusColor(String status) {
    switch (status) {
      case 'Hired':
        return const Color(0xFF2E7D32);
      case 'Rejected':
        return const Color(0xFFE53935);
      case 'Shortlisted':
        return const Color(0xFF246BFD);
      default:
        return const Color(0xFFFFA000); // Pending
    }
  }

  Color _statusBackground(String status) {
    switch (status) {
      case 'Hired':
        return const Color(0xFFE6F7EC);
      case 'Rejected':
        return const Color(0xFFFFE6E6);
      case 'Shortlisted':
        return const Color(0xFFE6EEFF);
      default:
        return const Color(0xFFFFF3E0);
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 8,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      padding: const EdgeInsets.all(14),
      child: Row(
        children: [
          CircleAvatar(
            radius: 22,
            backgroundColor: const Color(0xFFE6EEFF),
            child: Text(
              candidate.name.substring(0, 1),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xFF246BFD),
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  candidate.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  candidate.summary,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: const Color(0xFF9BA4B5),
                  ),
                ),
                const SizedBox(height: 6),
                Row(
                  children: [
                    const Icon(
                      Icons.location_on_outlined,
                      size: 14,
                      color: Color(0xFF9BA4B5),
                    ),
                    const SizedBox(width: 2),
                    Text(
                      candidate.location,
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: const Color(0xFF9BA4B5),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: _statusBackground(candidate.status),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  candidate.status,
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                    color: _statusColor(candidate.status),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              TextButton(
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 4,
                  ),
                  side: const BorderSide(color: Color(0xFF246BFD)),
                  minimumSize: const Size(0, 30),
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => CandidateProfileScreen(
                        candidate: candidate,
                        onUpdateStatus: onUpdateStatus,
                      ),
                    ),
                  );
                },
                child: const Text('View', style: TextStyle(fontSize: 12)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

/* -------------------------------------------------------------------------- */
/*  CANDIDATE PROFILE SCREEN                                                  */
/* -------------------------------------------------------------------------- */

class CandidateProfileScreen extends StatelessWidget {
  final Candidate candidate;
  final ValueChanged<Candidate> onUpdateStatus;

  const CandidateProfileScreen({
    super.key,
    required this.candidate,
    required this.onUpdateStatus,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: const Color(0xFFF4F6FB),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.3,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, size: 18),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          'View Profile',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Color(0xFF1C274C),
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 90),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 32,
                    backgroundColor: const Color(0xFFE6EEFF),
                    child: Text(
                      candidate.name.substring(0, 1),
                      style: const TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF246BFD),
                      ),
                    ),
                  ),
                  const SizedBox(width: 14),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          candidate.name,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          '${candidate.position} | ${candidate.summary}',
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: const Color(0xFF9BA4B5),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // Contact info
              Row(
                children: [
                  const Icon(
                    Icons.location_on_outlined,
                    size: 18,
                    color: Color(0xFF246BFD),
                  ),
                  const SizedBox(width: 6),
                  Text(candidate.location, style: theme.textTheme.bodySmall),
                ],
              ),
              const SizedBox(height: 6),
              Row(
                children: [
                  const Icon(
                    Icons.email_outlined,
                    size: 18,
                    color: Color(0xFF246BFD),
                  ),
                  const SizedBox(width: 6),
                  Text(candidate.email, style: theme.textTheme.bodySmall),
                ],
              ),
              const SizedBox(height: 6),
              Row(
                children: [
                  const Icon(
                    Icons.phone_outlined,
                    size: 18,
                    color: Color(0xFF246BFD),
                  ),
                  const SizedBox(width: 6),
                  Text(candidate.phone, style: theme.textTheme.bodySmall),
                ],
              ),
              const SizedBox(height: 20),

              _profileSection(
                title: 'Technical Skills',
                content: candidate.technicalSkills,
              ),
              const SizedBox(height: 16),
              _profileSection(
                title: 'Professional Experience',
                content: candidate.experience,
              ),
              const SizedBox(height: 16),
              _profileSection(
                title: 'Additional Information',
                content: candidate.additionalInfo,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
        color: Colors.white,
        child: Row(
          children: [
            Expanded(
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 8,
                  ),
                  side: const BorderSide(color: Color(0xFFE53935)),
                ),
                onPressed: () {
                  onUpdateStatus(candidate.copyWith(status: 'Rejected'));
                  Navigator.of(context).pop();
                },
                child: const Text(
                  'Reject',
                  style: TextStyle(color: Color(0xFFE53935)),
                ),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 8,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  backgroundColor: const Color(0xFF246BFD),
                ),
                onPressed: () {
                  onUpdateStatus(candidate.copyWith(status: 'Shortlisted'));
                  Navigator.of(context).pop();
                },
                child: const Text(
                  'Shortlist',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _profileSection({required String title, required String content}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
        ),
        const SizedBox(height: 8),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(14),
            border: Border.all(color: const Color(0xFFE2E6F0)),
          ),
          child: Text(
            content.trim(),
            style: const TextStyle(fontSize: 13.5, height: 1.4),
          ),
        ),
      ],
    );
  }
}

/* -------------------------------------------------------------------------- */
/*  JOB FORM SCREEN (POST / EDIT)                                             */
/* -------------------------------------------------------------------------- */

class JobFormScreen extends StatefulWidget {
  final String screenTitle;
  final String headerTitle;
  final String headerSubtitle;
  final String primaryButtonLabel;
  final Job initialJob;

  const JobFormScreen({
    super.key,
    required this.screenTitle,
    required this.headerTitle,
    required this.headerSubtitle,
    required this.primaryButtonLabel,
    required this.initialJob,
  });

  @override
  State<JobFormScreen> createState() => _JobFormScreenState();
}

class _JobFormScreenState extends State<JobFormScreen> {
  late final TextEditingController _titleController;
  late final TextEditingController _descriptionController;
  late final TextEditingController _minSalaryController;
  late final TextEditingController _maxSalaryController;
  late final TextEditingController _requirementsController;

  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController(text: widget.initialJob.title);
    _descriptionController = TextEditingController(
      text: widget.initialJob.description,
    );
    _minSalaryController = TextEditingController(
      text: widget.initialJob.minSalary,
    );
    _maxSalaryController = TextEditingController(
      text: widget.initialJob.maxSalary,
    );
    _requirementsController = TextEditingController(
      text: widget.initialJob.requirements,
    );
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    _minSalaryController.dispose();
    _maxSalaryController.dispose();
    _requirementsController.dispose();
    super.dispose();
  }

  void _onSubmit() {
    final job = widget.initialJob.copyWith(
      title: _titleController.text.trim(),
      description: _descriptionController.text.trim(),
      minSalary: _minSalaryController.text.trim(),
      maxSalary: _maxSalaryController.text.trim(),
      requirements: _requirementsController.text.trim(),
    );
    Navigator.of(context).pop(job);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: const Color(0xFFF4F6FB),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.3,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, size: 18),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          widget.screenTitle,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            color: Color(0xFF1C274C),
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.headerTitle,
                      style: theme.textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF1C274C),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      widget.headerSubtitle,
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: const Color(0xFF9BA4B5),
                      ),
                    ),
                    const SizedBox(height: 16),

                    // Title
                    const _FieldLabel('Title'),
                    const SizedBox(height: 6),
                    _RoundedField(
                      child: TextField(
                        controller: _titleController,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Software Developer',
                        ),
                      ),
                    ),
                    const SizedBox(height: 14),

                    // Description
                    const _FieldLabel('Description'),
                    const SizedBox(height: 6),
                    _RoundedField(
                      child: TextField(
                        controller: _descriptionController,
                        maxLines: 5,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter job description...',
                        ),
                      ),
                    ),
                    const SizedBox(height: 14),

                    // Salary
                    const _FieldLabel('Salary'),
                    const SizedBox(height: 6),
                    Row(
                      children: [
                        Expanded(
                          child: _RoundedField(
                            child: TextField(
                              controller: _minSalaryController,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: 'RM4,000',
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: Text('To'),
                        ),
                        Expanded(
                          child: _RoundedField(
                            child: TextField(
                              controller: _maxSalaryController,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: 'RM5,000',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 14),

                    // Requirements
                    const _FieldLabel('Requirements'),
                    const SizedBox(height: 6),
                    _RoundedField(
                      child: TextField(
                        controller: _requirementsController,
                        maxLines: 6,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: '• List requirements here...',
                        ),
                      ),
                    ),
                    const SizedBox(height: 80),
                  ],
                ),
              ),
            ),

            // Bottom button with gradient
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0x11000000),
                    blurRadius: 8,
                    offset: Offset(0, -2),
                  ),
                ],
              ),
              child: GestureDetector(
                onTap: _onSubmit,
                child: Container(
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    gradient: const LinearGradient(
                      colors: [Color(0xFF5B8CFF), Color(0xFF3D6BFF)],
                    ),
                  ),
                  child: Center(
                    child: Text(
                      widget.primaryButtonLabel,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _FieldLabel extends StatelessWidget {
  final String text;
  const _FieldLabel(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontWeight: FontWeight.w500,
        color: Color(0xFF1C274C),
      ),
    );
  }
}

class _RoundedField extends StatelessWidget {
  final Widget child;
  const _RoundedField({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: const Color(0xFFE2E6F0)),
      ),
      child: child,
    );
  }
}
