.class public final Lbd;
.super Ljava/lang/Object;


# instance fields
.field private synthetic a:Lbe;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lbe;)V
    .registers 2

    iput-object p1, p0, Lbd;->a:Lbe;

    invoke-direct {p0}, Lbd;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/location/Location;)V
    .registers 3

    if-eqz p1, :cond_7

    iget-object v0, p0, Lbd;->a:Lbe;

    invoke-static {v0, p1}, Lbe;->a(Lbe;Landroid/location/Location;)V

    :cond_7
    return-void
.end method
