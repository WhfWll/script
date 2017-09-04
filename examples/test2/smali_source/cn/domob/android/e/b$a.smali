.class public Lcn/domob/android/e/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/e/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/e/b;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:J

.field private h:J


# direct methods
.method protected constructor <init>(Lcn/domob/android/e/b;)V
    .registers 2

    .prologue
    .line 95
    iput-object p1, p0, Lcn/domob/android/e/b$a;->a:Lcn/domob/android/e/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcn/domob/android/e/b$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected a(I)V
    .registers 2

    .prologue
    .line 114
    iput p1, p0, Lcn/domob/android/e/b$a;->c:I

    .line 115
    return-void
.end method

.method protected a(J)V
    .registers 4

    .prologue
    .line 138
    iput-wide p1, p0, Lcn/domob/android/e/b$a;->g:J

    .line 139
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 108
    iput-object p1, p0, Lcn/domob/android/e/b$a;->b:Ljava/lang/String;

    .line 109
    return-void
.end method

.method protected b()I
    .registers 2

    .prologue
    .line 111
    iget v0, p0, Lcn/domob/android/e/b$a;->c:I

    return v0
.end method

.method protected b(I)V
    .registers 2

    .prologue
    .line 120
    iput p1, p0, Lcn/domob/android/e/b$a;->d:I

    .line 121
    return-void
.end method

.method protected b(J)V
    .registers 4

    .prologue
    .line 144
    iput-wide p1, p0, Lcn/domob/android/e/b$a;->h:J

    .line 145
    return-void
.end method

.method protected c()I
    .registers 2

    .prologue
    .line 117
    iget v0, p0, Lcn/domob/android/e/b$a;->d:I

    return v0
.end method

.method protected c(I)V
    .registers 2

    .prologue
    .line 126
    iput p1, p0, Lcn/domob/android/e/b$a;->e:I

    .line 127
    return-void
.end method

.method protected d()I
    .registers 2

    .prologue
    .line 123
    iget v0, p0, Lcn/domob/android/e/b$a;->e:I

    return v0
.end method

.method protected d(I)V
    .registers 2

    .prologue
    .line 132
    iput p1, p0, Lcn/domob/android/e/b$a;->f:I

    .line 133
    return-void
.end method

.method protected e()I
    .registers 2

    .prologue
    .line 129
    iget v0, p0, Lcn/domob/android/e/b$a;->f:I

    return v0
.end method

.method protected f()J
    .registers 3

    .prologue
    .line 135
    iget-wide v0, p0, Lcn/domob/android/e/b$a;->g:J

    return-wide v0
.end method

.method protected g()J
    .registers 3

    .prologue
    .line 141
    iget-wide v0, p0, Lcn/domob/android/e/b$a;->h:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Freq [freqId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/e/b$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", impTimes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/domob/android/e/b$a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", impLimitTimes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/domob/android/e/b$a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", clickTimes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/domob/android/e/b$a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", clickLimitTimes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/domob/android/e/b$a;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcn/domob/android/e/b$a;->g:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", updateTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcn/domob/android/e/b$a;->h:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
