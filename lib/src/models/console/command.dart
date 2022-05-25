import 'dart:io';

class Command {
  const Command({
    required this.executable,
    this.arguments = const <String>[],
    this.runInShell = false,
    this.workingDirectory,
    this.environment = const <String, String>{},
    this.includeParentEnvironment = true,
    this.mode = ProcessStartMode.normal,
  });

  final String executable;

  final List<String> arguments;

  final bool runInShell;

  final String? workingDirectory;

  final Map<String, String> environment;

  final bool includeParentEnvironment;

  final ProcessStartMode mode;
}
