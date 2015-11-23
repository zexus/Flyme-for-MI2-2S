.class Lcom/android/settings/display/g;
.super Ljava/lang/Object;
.source "FluencyModeListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic UD:Lcom/android/settings/display/e;


# direct methods
.method constructor <init>(Lcom/android/settings/display/e;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/settings/display/g;->UD:Lcom/android/settings/display/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/display/g;->UD:Lcom/android/settings/display/e;

    iget-object v0, v0, Lcom/android/settings/display/e;->UC:Lcom/android/settings/display/FluencyModeListPreference;

    invoke-virtual {v0}, Lcom/android/settings/display/FluencyModeListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 81
    return-void
.end method
