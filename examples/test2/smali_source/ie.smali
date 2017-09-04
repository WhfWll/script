.class public final Lie;
.super Lfo;


# instance fields
.field private a:Lfw;

.field public a:Ljava/math/BigInteger;

.field public b:Ljava/math/BigInteger;

.field public c:Ljava/math/BigInteger;

.field public d:Ljava/math/BigInteger;

.field public e:Ljava/math/BigInteger;

.field public f:Ljava/math/BigInteger;

.field public g:Ljava/math/BigInteger;

.field public h:Ljava/math/BigInteger;

.field private i:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Lfw;)V
    .registers 6

    invoke-direct {p0}, Lfo;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lie;->a:Lfw;

    invoke-virtual {p1}, Lfw;->a()Ljava/util/Enumeration;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfm;

    invoke-virtual {v0}, Lfm;->a()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    if-eqz v2, :cond_29

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_29

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "wrong version for RSA private key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    iput-object v0, p0, Lie;->i:Ljava/math/BigInteger;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfm;

    invoke-virtual {v0}, Lfm;->a()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lie;->a:Ljava/math/BigInteger;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfm;

    invoke-virtual {v0}, Lfm;->a()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lie;->b:Ljava/math/BigInteger;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfm;

    invoke-virtual {v0}, Lfm;->a()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lie;->c:Ljava/math/BigInteger;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfm;

    invoke-virtual {v0}, Lfm;->a()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lie;->d:Ljava/math/BigInteger;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfm;

    invoke-virtual {v0}, Lfm;->a()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lie;->e:Ljava/math/BigInteger;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfm;

    invoke-virtual {v0}, Lfm;->a()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lie;->f:Ljava/math/BigInteger;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfm;

    invoke-virtual {v0}, Lfm;->a()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lie;->g:Ljava/math/BigInteger;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfm;

    invoke-virtual {v0}, Lfm;->a()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lie;->h:Ljava/math/BigInteger;

    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_99

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfw;

    iput-object v0, p0, Lie;->a:Lfw;

    :cond_99
    return-void
.end method


# virtual methods
.method public final b()Lfv;
    .registers 4

    new-instance v0, Lfh;

    invoke-direct {v0}, Lfh;-><init>()V

    new-instance v1, Lfm;

    iget-object v2, p0, Lie;->i:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lfm;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lfh;->a(Lfg;)V

    new-instance v1, Lfm;

    iget-object v2, p0, Lie;->a:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lfm;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lfh;->a(Lfg;)V

    new-instance v1, Lfm;

    iget-object v2, p0, Lie;->b:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lfm;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lfh;->a(Lfg;)V

    new-instance v1, Lfm;

    iget-object v2, p0, Lie;->c:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lfm;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lfh;->a(Lfg;)V

    new-instance v1, Lfm;

    iget-object v2, p0, Lie;->d:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lfm;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lfh;->a(Lfg;)V

    new-instance v1, Lfm;

    iget-object v2, p0, Lie;->e:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lfm;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lfh;->a(Lfg;)V

    new-instance v1, Lfm;

    iget-object v2, p0, Lie;->f:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lfm;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lfh;->a(Lfg;)V

    new-instance v1, Lfm;

    iget-object v2, p0, Lie;->g:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lfm;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lfh;->a(Lfg;)V

    new-instance v1, Lfm;

    iget-object v2, p0, Lie;->h:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lfm;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lfh;->a(Lfg;)V

    iget-object v1, p0, Lie;->a:Lfw;

    if-eqz v1, :cond_68

    iget-object v1, p0, Lie;->a:Lfw;

    invoke-virtual {v0, v1}, Lfh;->a(Lfg;)V

    :cond_68
    new-instance v1, Lhi;

    invoke-direct {v1, v0}, Lhi;-><init>(Lfh;)V

    return-object v1
.end method
