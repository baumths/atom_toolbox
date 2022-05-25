/// {{ .State.Status }}
enum ContainerStatus {
  created,
  running,
  paused,
  restarting,
  exited,
  dead,
  none,
}

extension ContainerStatusX on ContainerStatus {
  String get value => toString().split('.').last;

  ContainerStatus fromString(String status) {
    switch (status) {
      case 'created':
        return ContainerStatus.created;
      case 'running':
        return ContainerStatus.running;
      case 'paused':
        return ContainerStatus.paused;
      case 'restarting':
        return ContainerStatus.restarting;
      case 'exited':
        return ContainerStatus.exited;
      case 'dead':
        return ContainerStatus.dead;
      default:
        return ContainerStatus.none;
    }
  }
}
