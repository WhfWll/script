.class final enum Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS$4;
.super Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;
.source "AnalyticsConfigurator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 312
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;-><init>(Ljava/lang/String;ILcom/worklight/androidgap/plugin/AnalyticsConfigurator$1;)V

    return-void
.end method


# virtual methods
.method public doAction(Lcom/worklight/androidgap/plugin/AnalyticsConfigurator;Ljava/lang/String;)V
    .registers 10
    .param p1, "configurator"    # Lcom/worklight/androidgap/plugin/AnalyticsConfigurator;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 317
    :try_start_1
    const-string v3, "com.tl.uic.Tealeaf"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 318
    .local v1, "tlClass":Ljava/lang/Class;
    const-string v3, "isEnabled"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 319
    .local v2, "tlIsEnabled":Z
    if-eqz v2, :cond_3b

    .line 320
    const-string v3, "disable"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    # getter for: Lcom/worklight/androidgap/plugin/AnalyticsConfigurator;->wlUEH:Lcom/worklight/androidgap/analytics/AnalyticsUncaughtExceptionHandler;
    invoke-static {}, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator;->access$200()Lcom/worklight/androidgap/analytics/AnalyticsUncaughtExceptionHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/worklight/androidgap/analytics/AnalyticsUncaughtExceptionHandler;->setDefaultUncaughtExceptionHandler()V

    .line 323
    const/4 v3, 0x0

    # setter for: Lcom/worklight/androidgap/plugin/AnalyticsConfigurator;->wlUEH:Lcom/worklight/androidgap/analytics/AnalyticsUncaughtExceptionHandler;
    invoke-static {v3}, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator;->access$202(Lcom/worklight/androidgap/analytics/AnalyticsUncaughtExceptionHandler;)Lcom/worklight/androidgap/analytics/AnalyticsUncaughtExceptionHandler;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3b} :catch_4f

    .line 330
    .end local v1    # "tlClass":Ljava/lang/Class;
    .end local v2    # "tlIsEnabled":Z
    :cond_3b
    :goto_3b
    sget-object v3, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    sget-object v4, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$OPTIONS;->ENABLED:Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$OPTIONS;

    invoke-virtual {v4}, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$OPTIONS;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 331
    return-void

    .line 326
    :catch_4f
    move-exception v0

    .line 328
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/worklight/androidgap/plugin/AnalyticsConfigurator;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "disable was called, but the required Tealeaf libraries are not present in the classpath."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b
.end method
