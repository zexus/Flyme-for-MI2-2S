.class Lcom/android/settings_ext/dashboard/k;
.super Ljava/lang/Object;
.source "SearchResultsSummary.java"


# instance fields
.field public RA:Ljava/lang/String;

.field public RB:Ljava/lang/String;

.field public Rz:Ljava/lang/String;

.field public context:Landroid/content/Context;

.field public iconResId:I

.field public key:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 491
    iput-object p1, p0, Lcom/android/settings_ext/dashboard/k;->context:Landroid/content/Context;

    .line 492
    iput-object p2, p0, Lcom/android/settings_ext/dashboard/k;->title:Ljava/lang/String;

    .line 493
    iput-object p3, p0, Lcom/android/settings_ext/dashboard/k;->Rz:Ljava/lang/String;

    .line 494
    iput-object p4, p0, Lcom/android/settings_ext/dashboard/k;->RA:Ljava/lang/String;

    .line 495
    iput-object p5, p0, Lcom/android/settings_ext/dashboard/k;->RB:Ljava/lang/String;

    .line 496
    iput p6, p0, Lcom/android/settings_ext/dashboard/k;->iconResId:I

    .line 497
    iput-object p7, p0, Lcom/android/settings_ext/dashboard/k;->key:Ljava/lang/String;

    .line 498
    return-void
.end method
