.class Lcom/android/settings_ext/applications/AppOpsDetails$1;
.super Ljava/lang/Object;
.source "AppOpsDetails.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field CR:Z

.field final synthetic CS:I

.field final synthetic CT:Lcom/android/settings_ext/applications/AppOpsState$AppOpEntry;

.field final synthetic CU:Lcom/android/settings_ext/applications/AppOpsDetails;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/applications/AppOpsDetails;ILcom/android/settings_ext/applications/AppOpsState$AppOpEntry;)V
    .locals 1

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/settings_ext/applications/AppOpsDetails$1;->CU:Lcom/android/settings_ext/applications/AppOpsDetails;

    iput p2, p0, Lcom/android/settings_ext/applications/AppOpsDetails$1;->CS:I

    iput-object p3, p0, Lcom/android/settings_ext/applications/AppOpsDetails$1;->CT:Lcom/android/settings_ext/applications/AppOpsState$AppOpEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ext/applications/AppOpsDetails$1;->CR:Z

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/android/settings_ext/applications/AppOpsDetails$1;->CR:Z

    if-eqz v0, :cond_0

    .line 191
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ext/applications/AppOpsDetails$1;->CR:Z

    .line 196
    :goto_0
    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/applications/AppOpsDetails$1;->CU:Lcom/android/settings_ext/applications/AppOpsDetails;

    invoke-static {v0}, Lcom/android/settings_ext/applications/AppOpsDetails;->a(Lcom/android/settings_ext/applications/AppOpsDetails;)Landroid/app/AppOpsManager;

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ext/applications/AppOpsDetails$1;->CS:I

    iget-object v2, p0, Lcom/android/settings_ext/applications/AppOpsDetails$1;->CT:Lcom/android/settings_ext/applications/AppOpsState$AppOpEntry;

    invoke-virtual {v2}, Lcom/android/settings_ext/applications/AppOpsState$AppOpEntry;->iF()Landroid/app/AppOpsManager$PackageOps;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings_ext/applications/AppOpsDetails$1;->CT:Lcom/android/settings_ext/applications/AppOpsState$AppOpEntry;

    invoke-virtual {v3}, Lcom/android/settings_ext/applications/AppOpsState$AppOpEntry;->iF()Landroid/app/AppOpsManager$PackageOps;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ext/applications/AppOpsDetails$1;->CU:Lcom/android/settings_ext/applications/AppOpsDetails;

    invoke-static {v4, p3}, Lcom/android/settings_ext/applications/AppOpsDetails;->a(Lcom/android/settings_ext/applications/AppOpsDetails;I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    .prologue
    .line 201
    return-void
.end method
