.class Lcom/android/settings_ext/by;
.super Ljava/lang/Object;
.source "DevelopmentSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic iU:I

.field final synthetic iV:Lcom/android/settings_ext/DevelopmentSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/DevelopmentSettings;I)V
    .locals 0

    .prologue
    .line 1516
    iput-object p1, p0, Lcom/android/settings_ext/by;->iV:Lcom/android/settings_ext/DevelopmentSettings;

    iput p2, p0, Lcom/android/settings_ext/by;->iU:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 1519
    iget-object v0, p0, Lcom/android/settings_ext/by;->iV:Lcom/android/settings_ext/DevelopmentSettings;

    iget v1, p0, Lcom/android/settings_ext/by;->iU:I

    invoke-static {v0, v1}, Lcom/android/settings_ext/DevelopmentSettings;->a(Lcom/android/settings_ext/DevelopmentSettings;I)V

    .line 1520
    return-void
.end method
