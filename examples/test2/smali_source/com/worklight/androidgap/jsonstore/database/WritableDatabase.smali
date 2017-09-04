.class public Lcom/worklight/androidgap/jsonstore/database/WritableDatabase;
.super Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;
.source "WritableDatabase.java"


# static fields
.field private static final SQL_AND:Ljava/lang/String; = " AND"

.field private static final SQL_DELETE:Ljava/lang/String; = "DELETE FROM {0} WHERE {1};"

.field private static final SQL_INSERT:Ljava/lang/String; = "INSERT INTO {0} ({1}) VALUES ({2});"

.field private static final SQL_UPDATE:Ljava/lang/String; = "UPDATE {0} SET {1}{2};"

.field private static final SQL_WHERE:Ljava/lang/String; = " WHERE"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/jsonstore/database/WritableDatabase;

    const v1, 0x448

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method protected constructor <init>(Lnet/sqlcipher/database/SQLiteDatabase;Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;)V
    .registers 3
    .param p1, "database"    # Lnet/sqlcipher/database/SQLiteDatabase;
    .param p2, "schema"    # Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;-><init>(Lnet/sqlcipher/database/SQLiteDatabase;Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;)V

    .line 43
    return-void
.end method


# virtual methods
.method public native delete([Ljava/lang/String;[Ljava/lang/Object;)I
.end method

.method public native deleteIfRequired(Lorg/json/JSONObject;ZZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method public native insert(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)J
.end method

.method public native insert(Ljava/util/Map;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)J"
        }
    .end annotation
.end method

.method public native update(Ljava/util/Map;Ljava/util/Map;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation
.end method

.method public native update(Lorg/json/JSONObject;Z)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public native update([Ljava/lang/String;[Ljava/lang/Object;Ljava/util/Map;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation
.end method

.method public native update([Ljava/lang/String;[Ljava/lang/Object;Lorg/json/JSONObject;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method
