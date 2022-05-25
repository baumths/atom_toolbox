import 'dart:ui';

import 'package:atom_toolbox/src/models/docker/container_status.dart';

enum AtoMContainers {
  atom,
  worker,
  nginx,
  elasticsearch,
  mysql,
  memcached,
  gearmand,
}

class AtoMContainer {
  const AtoMContainer({
    required this.id,
    required this.name,
    this.status = ContainerStatus.none,
    this.exitCode,
  });

  final String id;
  final AtoMContainers name;
  final ContainerStatus status;
  final int? exitCode;

  AtoMContainer copyWith({
    String? id,
    AtoMContainers? name,
    ContainerStatus? status,
    int? exitCode,
  }) {
    return AtoMContainer(
      id: id ?? this.id,
      name: name ?? this.name,
      status: status ?? this.status,
      exitCode: exitCode ?? this.exitCode,
    );
  }

  @override
  String toString() {
    return 'AtoMContainer(id: $id, name: $name, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AtoMContainer &&
        other.id == id &&
        other.name == name &&
        other.status == status &&
        other.exitCode == exitCode;
  }

  @override
  int get hashCode {
    return hashValues(
      id.hashCode,
      name.hashCode,
      status.hashCode,
      exitCode.hashCode,
    );
  }
}
