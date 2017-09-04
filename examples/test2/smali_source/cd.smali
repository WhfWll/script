.class final Lcd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcc;

.field private synthetic a:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcc;Lorg/json/JSONObject;)V
    .registers 3

    iput-object p1, p0, Lcd;->a:Lcc;

    iput-object p2, p0, Lcd;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcd;->a:Lcc;

    iget-object v0, v0, Lcc;->a:Lcb;

    iget-object v0, v0, Lcb;->a:Lcom/arrownock/social/IAnSocialCallback;

    iget-object v1, p0, Lcd;->a:Lorg/json/JSONObject;

    invoke-interface {v0, v1}, Lcom/arrownock/social/IAnSocialCallback;->onFailure(Lorg/json/JSONObject;)V

    return-void
.end method
