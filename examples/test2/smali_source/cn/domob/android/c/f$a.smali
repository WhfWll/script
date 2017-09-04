.class public Lcn/domob/android/c/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/c/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "a"
.end annotation


# instance fields
.field protected a:Z

.field final synthetic b:Lcn/domob/android/c/f;


# direct methods
.method protected constructor <init>(Lcn/domob/android/c/f;)V
    .registers 3

    .prologue
    .line 145
    iput-object p1, p0, Lcn/domob/android/c/f$a;->b:Lcn/domob/android/c/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/domob/android/c/f$a;->a:Z

    return-void
.end method
