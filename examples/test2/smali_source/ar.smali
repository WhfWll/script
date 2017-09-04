.class final Lar;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic a:Lf;

.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lf;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    iput-object p1, p0, Lar;->a:Lf;

    iput-object p2, p0, Lar;->a:Ljava/lang/String;

    iput-object p3, p0, Lar;->b:Ljava/lang/String;

    iput-object p4, p0, Lar;->c:Ljava/lang/String;

    iput p5, p0, Lar;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Lar;->a:Lf;

    invoke-static {v0}, Lf;->a(Lf;)Lji;

    move-result-object v0

    iget-object v1, p0, Lar;->a:Ljava/lang/String;

    iget-object v2, p0, Lar;->b:Ljava/lang/String;

    iget-object v3, p0, Lar;->c:Ljava/lang/String;

    const/4 v4, 0x1

    iget v5, p0, Lar;->a:I

    invoke-virtual/range {v0 .. v5}, Lji;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method
