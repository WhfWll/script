.class public final Leg;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic a:Landroid/content/SharedPreferences;

.field final synthetic a:Lcom/arrownock/push/PushNotificationFetcher;

.field final synthetic a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/arrownock/push/PushNotificationFetcher;Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Leg;->a:Lcom/arrownock/push/PushNotificationFetcher;

    iput-object p2, p0, Leg;->a:Landroid/content/Context;

    iput-object p3, p0, Leg;->a:Landroid/content/SharedPreferences;

    iput-object p4, p0, Leg;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
