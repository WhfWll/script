.class final Lau;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lat;


# direct methods
.method constructor <init>(Lat;)V
    .registers 2

    iput-object p1, p0, Lau;->a:Lat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lau;->a:Lat;

    iget-object v0, v0, Lat;->a:Lf;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lf;->b(Lf;Z)Z

    iget-object v0, p0, Lau;->a:Lat;

    iget-object v0, v0, Lat;->a:Lf;

    invoke-static {v0}, Lf;->a(Lf;)Lji;

    move-result-object v0

    invoke-virtual {v0}, Lji;->a()V

    iget-object v0, p0, Lau;->a:Lat;

    iget-object v0, v0, Lat;->a:Lf;

    invoke-static {v0}, Lf;->b(Lf;)Lji;

    return-void
.end method
