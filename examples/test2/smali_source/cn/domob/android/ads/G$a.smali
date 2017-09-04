.class Lcn/domob/android/ads/G$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/G;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "domob_close_interstitial.png"

.field public static final b:I = 0x24

.field public static final c:I = 0x24

.field public static final d:I = 0x6

.field public static final e:I = 0x6

.field public static final f:I = 0x2

.field public static final g:I = 0xc

.field protected static final h:I = 0x1

.field protected static final i:I = 0x2

.field protected static final j:I = 0x3

.field private static final k:I = 0x28

.field private static final l:I = 0x28

.field private static final m:I = 0x24

.field private static final n:I = 0x24

.field private static final o:I = 0x3

.field private static final p:Z


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field private I:I

.field private J:I

.field private K:I

.field private L:I

.field private M:Z

.field private N:Z

.field private O:Z

.field private P:Z

.field private q:Landroid/content/Context;

.field private r:Landroid/view/ViewGroup;

.field private s:Landroid/widget/RelativeLayout;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 769
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 822
    const/4 v0, 0x2

    iput v0, p0, Lcn/domob/android/ads/G$a;->G:I

    .line 829
    iput-boolean v1, p0, Lcn/domob/android/ads/G$a;->N:Z

    .line 830
    iput-boolean v1, p0, Lcn/domob/android/ads/G$a;->O:Z

    .line 831
    iput-boolean v1, p0, Lcn/domob/android/ads/G$a;->P:Z

    return-void
.end method


# virtual methods
.method protected A()Z
    .registers 2

    .prologue
    .line 1209
    iget-boolean v0, p0, Lcn/domob/android/ads/G$a;->N:Z

    return v0
.end method

.method protected a(I)V
    .registers 3

    .prologue
    .line 904
    iput p1, p0, Lcn/domob/android/ads/G$a;->H:I

    .line 905
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/G$a;->O:Z

    .line 906
    return-void
.end method

.method protected a(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 941
    iput-object p1, p0, Lcn/domob/android/ads/G$a;->q:Landroid/content/Context;

    .line 942
    return-void
.end method

.method protected a(Landroid/content/Context;I)V
    .registers 4

    .prologue
    .line 1001
    invoke-static {p1, p2}, Lcn/domob/android/i/g;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/G$a;->B:I

    .line 1002
    return-void
.end method

.method protected a(Landroid/view/ViewGroup;)V
    .registers 2

    .prologue
    .line 1088
    iput-object p1, p0, Lcn/domob/android/ads/G$a;->r:Landroid/view/ViewGroup;

    .line 1089
    return-void
.end method

.method protected a(Landroid/widget/RelativeLayout;)V
    .registers 2

    .prologue
    .line 869
    iput-object p1, p0, Lcn/domob/android/ads/G$a;->s:Landroid/widget/RelativeLayout;

    .line 870
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 855
    iput-object p1, p0, Lcn/domob/android/ads/G$a;->t:Ljava/lang/String;

    .line 856
    return-void
.end method

.method protected a(Z)V
    .registers 2

    .prologue
    .line 883
    iput-boolean p1, p0, Lcn/domob/android/ads/G$a;->M:Z

    .line 884
    return-void
.end method

.method protected a()Z
    .registers 4

    .prologue
    .line 837
    iget-object v0, p0, Lcn/domob/android/ads/G$a;->q:Landroid/content/Context;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcn/domob/android/ads/G$a;->r:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1d

    iget v0, p0, Lcn/domob/android/ads/G$a;->x:I

    if-lez v0, :cond_1d

    iget v0, p0, Lcn/domob/android/ads/G$a;->y:I

    if-lez v0, :cond_1d

    const/4 v0, 0x1

    .line 838
    :goto_11
    if-nez v0, :cond_1c

    .line 839
    invoke-static {}, Lcn/domob/android/i/f;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Parameters provided illegal, can not show ad"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    :cond_1c
    return v0

    .line 837
    :cond_1d
    const/4 v0, 0x0

    goto :goto_11
.end method

.method protected b(Landroid/content/Context;)I
    .registers 3

    .prologue
    .line 1053
    const/16 v0, 0x24

    invoke-static {p1, v0}, Lcn/domob/android/i/g;->a(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method protected b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 848
    iget-object v0, p0, Lcn/domob/android/ads/G$a;->t:Ljava/lang/String;

    return-object v0
.end method

.method protected b(I)V
    .registers 3

    .prologue
    .line 926
    iput p1, p0, Lcn/domob/android/ads/G$a;->I:I

    .line 927
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/G$a;->P:Z

    .line 928
    return-void
.end method

.method protected b(Landroid/content/Context;I)V
    .registers 4

    .prologue
    .line 1015
    invoke-static {p1, p2}, Lcn/domob/android/i/g;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/G$a;->A:I

    .line 1016
    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1067
    iput-object p1, p0, Lcn/domob/android/ads/G$a;->u:Ljava/lang/String;

    .line 1068
    return-void
.end method

.method protected b(Z)V
    .registers 2

    .prologue
    .line 1218
    iput-boolean p1, p0, Lcn/domob/android/ads/G$a;->N:Z

    .line 1219
    return-void
.end method

.method protected c(Landroid/content/Context;)I
    .registers 3

    .prologue
    .line 1060
    const/16 v0, 0x24

    invoke-static {p1, v0}, Lcn/domob/android/i/g;->a(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method protected c()Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 862
    iget-object v0, p0, Lcn/domob/android/ads/G$a;->s:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method protected c(I)V
    .registers 2

    .prologue
    .line 955
    iput p1, p0, Lcn/domob/android/ads/G$a;->G:I

    .line 956
    return-void
.end method

.method protected c(Landroid/content/Context;I)V
    .registers 4

    .prologue
    .line 1029
    invoke-static {p1, p2}, Lcn/domob/android/i/g;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/G$a;->C:I

    .line 1030
    return-void
.end method

.method protected d(Landroid/content/Context;)I
    .registers 3

    .prologue
    .line 1225
    const/16 v0, 0x28

    invoke-static {p1, v0}, Lcn/domob/android/i/g;->a(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method protected d(I)V
    .registers 5

    .prologue
    .line 969
    iput p1, p0, Lcn/domob/android/ads/G$a;->E:I

    .line 970
    invoke-static {}, Lcn/domob/android/ads/G;->r()Lcn/domob/android/i/f;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the width of ad is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/domob/android/ads/G$a;->E:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 971
    return-void
.end method

.method protected d(Landroid/content/Context;I)V
    .registers 4

    .prologue
    .line 1046
    invoke-static {p1, p2}, Lcn/domob/android/i/g;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/G$a;->D:I

    .line 1047
    return-void
.end method

.method protected d()Z
    .registers 2

    .prologue
    .line 876
    iget-boolean v0, p0, Lcn/domob/android/ads/G$a;->M:Z

    return v0
.end method

.method protected e(Landroid/content/Context;)I
    .registers 3

    .prologue
    .line 1232
    const/16 v0, 0x28

    invoke-static {p1, v0}, Lcn/domob/android/i/g;->a(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method protected e(I)V
    .registers 5

    .prologue
    .line 984
    iput p1, p0, Lcn/domob/android/ads/G$a;->F:I

    .line 985
    invoke-static {}, Lcn/domob/android/ads/G;->r()Lcn/domob/android/i/f;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the height of ad is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/domob/android/ads/G$a;->F:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 986
    return-void
.end method

.method protected e()Z
    .registers 2

    .prologue
    .line 890
    iget-boolean v0, p0, Lcn/domob/android/ads/G$a;->O:Z

    return v0
.end method

.method protected f()I
    .registers 2

    .prologue
    .line 897
    iget v0, p0, Lcn/domob/android/ads/G$a;->H:I

    return v0
.end method

.method protected f(I)V
    .registers 2

    .prologue
    .line 1102
    iput p1, p0, Lcn/domob/android/ads/G$a;->v:I

    .line 1103
    return-void
.end method

.method protected g(I)V
    .registers 2

    .prologue
    .line 1116
    iput p1, p0, Lcn/domob/android/ads/G$a;->w:I

    .line 1117
    return-void
.end method

.method protected g()Z
    .registers 2

    .prologue
    .line 912
    iget-boolean v0, p0, Lcn/domob/android/ads/G$a;->P:Z

    return v0
.end method

.method protected h()I
    .registers 2

    .prologue
    .line 919
    iget v0, p0, Lcn/domob/android/ads/G$a;->I:I

    return v0
.end method

.method protected h(I)V
    .registers 2

    .prologue
    .line 1130
    iput p1, p0, Lcn/domob/android/ads/G$a;->K:I

    .line 1131
    return-void
.end method

.method protected i()Landroid/content/Context;
    .registers 2

    .prologue
    .line 934
    iget-object v0, p0, Lcn/domob/android/ads/G$a;->q:Landroid/content/Context;

    return-object v0
.end method

.method protected i(I)V
    .registers 2

    .prologue
    .line 1144
    iput p1, p0, Lcn/domob/android/ads/G$a;->L:I

    .line 1145
    return-void
.end method

.method protected j()I
    .registers 2

    .prologue
    .line 948
    iget v0, p0, Lcn/domob/android/ads/G$a;->G:I

    return v0
.end method

.method protected j(I)V
    .registers 5

    .prologue
    .line 1158
    iput p1, p0, Lcn/domob/android/ads/G$a;->x:I

    .line 1159
    invoke-static {}, Lcn/domob/android/ads/G;->r()Lcn/domob/android/i/f;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secure area width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/domob/android/ads/G$a;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 1160
    return-void
.end method

.method protected k()I
    .registers 2

    .prologue
    .line 962
    iget v0, p0, Lcn/domob/android/ads/G$a;->E:I

    return v0
.end method

.method protected k(I)V
    .registers 5

    .prologue
    .line 1173
    iput p1, p0, Lcn/domob/android/ads/G$a;->y:I

    .line 1174
    invoke-static {}, Lcn/domob/android/ads/G;->r()Lcn/domob/android/i/f;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secure area height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/domob/android/ads/G$a;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 1175
    return-void
.end method

.method protected l()I
    .registers 2

    .prologue
    .line 977
    iget v0, p0, Lcn/domob/android/ads/G$a;->F:I

    return v0
.end method

.method protected l(I)V
    .registers 2

    .prologue
    .line 1188
    iput p1, p0, Lcn/domob/android/ads/G$a;->z:I

    .line 1189
    return-void
.end method

.method protected m()I
    .registers 2

    .prologue
    .line 993
    iget v0, p0, Lcn/domob/android/ads/G$a;->B:I

    return v0
.end method

.method protected m(I)V
    .registers 2

    .prologue
    .line 1202
    iput p1, p0, Lcn/domob/android/ads/G$a;->J:I

    .line 1203
    return-void
.end method

.method protected n()I
    .registers 2

    .prologue
    .line 1008
    iget v0, p0, Lcn/domob/android/ads/G$a;->A:I

    return v0
.end method

.method protected o()I
    .registers 2

    .prologue
    .line 1022
    iget v0, p0, Lcn/domob/android/ads/G$a;->C:I

    return v0
.end method

.method protected p()I
    .registers 2

    .prologue
    .line 1038
    iget v0, p0, Lcn/domob/android/ads/G$a;->D:I

    return v0
.end method

.method protected q()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1074
    iget-object v0, p0, Lcn/domob/android/ads/G$a;->u:Ljava/lang/String;

    return-object v0
.end method

.method protected r()Landroid/view/ViewGroup;
    .registers 2

    .prologue
    .line 1081
    iget-object v0, p0, Lcn/domob/android/ads/G$a;->r:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected s()I
    .registers 2

    .prologue
    .line 1095
    iget v0, p0, Lcn/domob/android/ads/G$a;->v:I

    return v0
.end method

.method protected t()I
    .registers 2

    .prologue
    .line 1109
    iget v0, p0, Lcn/domob/android/ads/G$a;->w:I

    return v0
.end method

.method protected u()I
    .registers 2

    .prologue
    .line 1123
    iget v0, p0, Lcn/domob/android/ads/G$a;->K:I

    return v0
.end method

.method protected v()I
    .registers 2

    .prologue
    .line 1137
    iget v0, p0, Lcn/domob/android/ads/G$a;->L:I

    return v0
.end method

.method protected w()I
    .registers 2

    .prologue
    .line 1151
    iget v0, p0, Lcn/domob/android/ads/G$a;->x:I

    return v0
.end method

.method protected x()I
    .registers 2

    .prologue
    .line 1166
    iget v0, p0, Lcn/domob/android/ads/G$a;->y:I

    return v0
.end method

.method protected y()I
    .registers 2

    .prologue
    .line 1181
    iget v0, p0, Lcn/domob/android/ads/G$a;->z:I

    return v0
.end method

.method protected z()I
    .registers 2

    .prologue
    .line 1195
    iget v0, p0, Lcn/domob/android/ads/G$a;->J:I

    return v0
.end method
