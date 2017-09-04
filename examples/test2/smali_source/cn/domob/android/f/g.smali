.class public Lcn/domob/android/f/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcn/domob/android/f/h;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcn/domob/android/f/h;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcn/domob/android/f/g;->a:Lcn/domob/android/f/h;

    return-object v0
.end method

.method public a(Lcn/domob/android/f/h;)V
    .registers 4

    .prologue
    .line 12
    invoke-virtual {p1}, Lcn/domob/android/f/h;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcn/domob/android/f/h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcn/domob/android/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 21
    return-void
.end method

.method b(Lcn/domob/android/f/h;)V
    .registers 2

    .prologue
    .line 7
    iput-object p1, p0, Lcn/domob/android/f/g;->a:Lcn/domob/android/f/h;

    .line 8
    invoke-virtual {p0, p1}, Lcn/domob/android/f/g;->a(Lcn/domob/android/f/h;)V

    .line 9
    return-void
.end method
