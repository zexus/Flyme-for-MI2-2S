.class Lcom/android/settings/applications/AppOpsDetails$2;
.super Ljava/lang/Object;
.source "AppOpsDetails.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic CS:I

.field final synthetic CT:Lcom/android/settings/applications/AppOpsState$AppOpEntry;

.field final synthetic CU:Lcom/android/settings/applications/AppOpsDetails;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/AppOpsDetails;ILcom/android/settings/applications/AppOpsState$AppOpEntry;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/settings/applications/AppOpsDetails$2;->CU:Lcom/android/settings/applications/AppOpsDetails;

    iput p2, p0, Lcom/android/settings/applications/AppOpsDetails$2;->CS:I

    iput-object p3, p0, Lcom/android/settings/applications/AppOpsDetails$2;->CT:Lcom/android/settings/applications/AppOpsState$AppOpEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsDetails$2;->CU:Lcom/android/settings/applications/AppOpsDetails;

    invoke-static {v0}, Lcom/android/settings/applications/AppOpsDetails;->a(Lcom/android/settings/applications/AppOpsDetails;)Landroid/app/AppOpsManager;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/applications/AppOpsDetails$2;->CS:I

    iget-object v0, p0, Lcom/android/settings/applications/AppOpsDetails$2;->CT:Lcom/android/settings/applications/AppOpsState$AppOpEntry;

    invoke-virtual {v0}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->iF()Landroid/app/AppOpsManager$PackageOps;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v3

    iget-object v0, p0, Lcom/android/settings/applications/AppOpsDetails$2;->CT:Lcom/android/settings/applications/AppOpsState$AppOpEntry;

    invoke-virtual {v0}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->iF()Landroid/app/AppOpsManager$PackageOps;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 214
    return-void

    .line 209
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
