// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'MoorDataBase.dart';

// ignore_for_file: type=lint
class $TodoItemsTable extends TodoItems
    with TableInfo<$TodoItemsTable, TodoItem> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TodoItemsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _pNameMeta = const VerificationMeta('pName');
  @override
  late final GeneratedColumn<String> pName = GeneratedColumn<String>(
      'p_name', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 6, maxTextLength: 32),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _pPointurMeta =
      const VerificationMeta('pPointur');
  @override
  late final GeneratedColumn<String> pPointur = GeneratedColumn<String>(
      'p_pointur', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 2, maxTextLength: 2),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _categoryMeta =
      const VerificationMeta('category');
  @override
  late final GeneratedColumn<int> category = GeneratedColumn<int>(
      'category', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, pName, pPointur, category];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'todo_items';
  @override
  VerificationContext validateIntegrity(Insertable<TodoItem> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('p_name')) {
      context.handle(
          _pNameMeta, pName.isAcceptableOrUnknown(data['p_name']!, _pNameMeta));
    } else if (isInserting) {
      context.missing(_pNameMeta);
    }
    if (data.containsKey('p_pointur')) {
      context.handle(_pPointurMeta,
          pPointur.isAcceptableOrUnknown(data['p_pointur']!, _pPointurMeta));
    } else if (isInserting) {
      context.missing(_pPointurMeta);
    }
    if (data.containsKey('category')) {
      context.handle(_categoryMeta,
          category.isAcceptableOrUnknown(data['category']!, _categoryMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TodoItem map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TodoItem(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      pName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}p_name'])!,
      pPointur: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}p_pointur'])!,
      category: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}category']),
    );
  }

  @override
  $TodoItemsTable createAlias(String alias) {
    return $TodoItemsTable(attachedDatabase, alias);
  }
}

class TodoItem extends DataClass implements Insertable<TodoItem> {
  final int id;
  final String pName;
  final String pPointur;
  final int? category;
  const TodoItem(
      {required this.id,
      required this.pName,
      required this.pPointur,
      this.category});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['p_name'] = Variable<String>(pName);
    map['p_pointur'] = Variable<String>(pPointur);
    if (!nullToAbsent || category != null) {
      map['category'] = Variable<int>(category);
    }
    return map;
  }

  TodoItemsCompanion toCompanion(bool nullToAbsent) {
    return TodoItemsCompanion(
      id: Value(id),
      pName: Value(pName),
      pPointur: Value(pPointur),
      category: category == null && nullToAbsent
          ? const Value.absent()
          : Value(category),
    );
  }

  factory TodoItem.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TodoItem(
      id: serializer.fromJson<int>(json['id']),
      pName: serializer.fromJson<String>(json['pName']),
      pPointur: serializer.fromJson<String>(json['pPointur']),
      category: serializer.fromJson<int?>(json['category']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'pName': serializer.toJson<String>(pName),
      'pPointur': serializer.toJson<String>(pPointur),
      'category': serializer.toJson<int?>(category),
    };
  }

  TodoItem copyWith(
          {int? id,
          String? pName,
          String? pPointur,
          Value<int?> category = const Value.absent()}) =>
      TodoItem(
        id: id ?? this.id,
        pName: pName ?? this.pName,
        pPointur: pPointur ?? this.pPointur,
        category: category.present ? category.value : this.category,
      );
  @override
  String toString() {
    return (StringBuffer('TodoItem(')
          ..write('id: $id, ')
          ..write('pName: $pName, ')
          ..write('pPointur: $pPointur, ')
          ..write('category: $category')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, pName, pPointur, category);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TodoItem &&
          other.id == this.id &&
          other.pName == this.pName &&
          other.pPointur == this.pPointur &&
          other.category == this.category);
}

class TodoItemsCompanion extends UpdateCompanion<TodoItem> {
  final Value<int> id;
  final Value<String> pName;
  final Value<String> pPointur;
  final Value<int?> category;
  const TodoItemsCompanion({
    this.id = const Value.absent(),
    this.pName = const Value.absent(),
    this.pPointur = const Value.absent(),
    this.category = const Value.absent(),
  });
  TodoItemsCompanion.insert({
    this.id = const Value.absent(),
    required String pName,
    required String pPointur,
    this.category = const Value.absent(),
  })  : pName = Value(pName),
        pPointur = Value(pPointur);
  static Insertable<TodoItem> custom({
    Expression<int>? id,
    Expression<String>? pName,
    Expression<String>? pPointur,
    Expression<int>? category,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (pName != null) 'p_name': pName,
      if (pPointur != null) 'p_pointur': pPointur,
      if (category != null) 'category': category,
    });
  }

  TodoItemsCompanion copyWith(
      {Value<int>? id,
      Value<String>? pName,
      Value<String>? pPointur,
      Value<int?>? category}) {
    return TodoItemsCompanion(
      id: id ?? this.id,
      pName: pName ?? this.pName,
      pPointur: pPointur ?? this.pPointur,
      category: category ?? this.category,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (pName.present) {
      map['p_name'] = Variable<String>(pName.value);
    }
    if (pPointur.present) {
      map['p_pointur'] = Variable<String>(pPointur.value);
    }
    if (category.present) {
      map['category'] = Variable<int>(category.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TodoItemsCompanion(')
          ..write('id: $id, ')
          ..write('pName: $pName, ')
          ..write('pPointur: $pPointur, ')
          ..write('category: $category')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  late final $TodoItemsTable todoItems = $TodoItemsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [todoItems];
}
