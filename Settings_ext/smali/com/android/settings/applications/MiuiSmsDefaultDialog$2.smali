.class Lcom/android/settings/applications/MiuiSmsDefaultDialog$2;
.super Ljava/lang/Object;
.source "MiuiSmsDefaultDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic HE:Lcom/android/settings/applications/MiuiSmsDefaultDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/MiuiSmsDefaultDialog;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/settings/applications/MiuiSmsDefaultDialog$2;->HE:Lcom/android/settings/applications/MiuiSmsDefaultDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 58
    const-string v0, "com.android.mms"

    iget-object v1, p0, Lcom/android/settings/applications/MiuiSmsDefaultDialog$2;->HE:Lcom/android/settings/applications/MiuiSmsDefaultDialog;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    .line 59
    return-void
.end method
