.class Lcn/domob/android/offerwall/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final a:Ljava/lang/String; = "domob_config"

.field protected static final b:Ljava/lang/String; = "cookie_id"

.field protected static final c:Ljava/lang/String; = "interval"

.field protected static final d:Ljava/lang/String; = "disable"

.field protected static final e:Ljava/lang/String; = "timestamp"

.field protected static final f:Ljava/lang/String; = "time"

.field protected static final g:Ljava/lang/String; = "next_time"


# instance fields
.field private h:Landroid/content/Context;

.field private i:Ljava/lang/String;

.field private j:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/domob/android/offerwall/b;->h:Landroid/content/Context;

    iput-object p2, p0, Lcn/domob/android/offerwall/b;->i:Ljava/lang/String;

    iget-object v0, p0, Lcn/domob/android/offerwall/b;->h:Landroid/content/Context;

    iget-object v1, p0, Lcn/domob/android/offerwall/b;->i:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/offerwall/b;->j:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;F)F
    .registers 4

    iget-object v0, p0, Lcn/domob/android/offerwall/b;->j:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method protected a(Ljava/lang/String;I)I
    .registers 4

    iget-object v0, p0, Lcn/domob/android/offerwall/b;->j:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected a(Ljava/lang/String;J)J
    .registers 6

    iget-object v0, p0, Lcn/domob/android/offerwall/b;->j:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcn/domob/android/offerwall/b;->j:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/util/HashMap;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v2, p0, Lcn/domob/android/offerwall/b;->j:Landroid/content/SharedPreferences;

    monitor-enter v2

    :try_start_3
    iget-object v0, p0, Lcn/domob/android/offerwall/b;->j:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_11
    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v5, v1, Ljava/lang/String;

    if-eqz v5, :cond_2e

    check-cast v1, Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_11

    :catchall_2b
    move-exception v0

    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v0

    :cond_2e
    :try_start_2e
    instance-of v5, v1, Ljava/lang/Boolean;

    if-eqz v5, :cond_3c

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_11

    :cond_3c
    instance-of v5, v1, Ljava/lang/Integer;

    if-eqz v5, :cond_4a

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_11

    :cond_4a
    instance-of v5, v1, Ljava/lang/Float;

    if-eqz v5, :cond_58

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_11

    :cond_58
    instance-of v5, v1, Ljava/lang/Long;

    if-eqz v5, :cond_11

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {v3, v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_11

    :cond_66
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    monitor-exit v2
    :try_end_6a
    .catchall {:try_start_2e .. :try_end_6a} :catchall_2b

    return-void
.end method

.method protected a(Ljava/lang/String;Z)Z
    .registers 4

    iget-object v0, p0, Lcn/domob/android/offerwall/b;->j:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
