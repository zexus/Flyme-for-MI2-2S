.class Lcom/android/settings/applications/InstalledAppDetails$PremiumSmsSelectionListener;
.super Ljava/lang/Object;
.source "InstalledAppDetails.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private final Fq:Lcom/android/internal/telephony/ISms;

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/android/internal/telephony/ISms;)V
    .locals 0

    .prologue
    .line 940
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 941
    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetails$PremiumSmsSelectionListener;->mPackageName:Ljava/lang/String;

    .line 942
    iput-object p2, p0, Lcom/android/settings/applications/InstalledAppDetails$PremiumSmsSelectionListener;->Fq:Lcom/android/internal/telephony/ISms;

    .line 943
    return-void
.end method

.method private setPremiumSmsPermission(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 963
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails$PremiumSmsSelectionListener;->Fq:Lcom/android/internal/telephony/ISms;

    if-eqz v0, :cond_0

    .line 964
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails$PremiumSmsSelectionListener;->Fq:Lcom/android/internal/telephony/ISms;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ISms;->setPremiumSmsPermission(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 969
    :cond_0
    :goto_0
    return-void

    .line 966
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    .prologue
    .line 948
    if-ltz p3, :cond_0

    const/4 v0, 0x3

    if-ge p3, v0, :cond_0

    .line 949
    const-string v0, "InstalledAppDetails"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selected premium SMS policy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails$PremiumSmsSelectionListener;->mPackageName:Ljava/lang/String;

    add-int/lit8 v1, p3, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/InstalledAppDetails$PremiumSmsSelectionListener;->setPremiumSmsPermission(Ljava/lang/String;I)V

    .line 954
    :goto_0
    return-void

    .line 952
    :cond_0
    const-string v0, "InstalledAppDetails"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: unknown premium SMS policy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    .prologue
    .line 959
    return-void
.end method
