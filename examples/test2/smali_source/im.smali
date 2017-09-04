.class final Lim;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field private synthetic a:Lil;


# direct methods
.method constructor <init>(Lil;)V
    .registers 2

    iput-object p1, p0, Lim;->a:Lil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lim;->a:Lil;

    invoke-static {v0}, Lil;->a(Lil;)V

    const/4 v0, 0x0

    return-object v0
.end method
