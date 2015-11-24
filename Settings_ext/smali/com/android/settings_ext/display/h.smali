.class Lcom/android/settings_ext/display/h;
.super Ljava/lang/Object;
.source "FluencyModeListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic UD:Lcom/android/settings_ext/display/e;

.field final synthetic UE:I


# direct methods
.method constructor <init>(Lcom/android/settings_ext/display/e;I)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/settings_ext/display/h;->UD:Lcom/android/settings_ext/display/e;

    iput p2, p0, Lcom/android/settings_ext/display/h;->UE:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings_ext/display/h;->UD:Lcom/android/settings_ext/display/e;

    iget-object v0, v0, Lcom/android/settings_ext/display/e;->UC:Lcom/android/settings_ext/display/FluencyModeListPreference;

    iget v1, p0, Lcom/android/settings_ext/display/h;->UE:I

    invoke-static {v0, v1}, Lcom/android/settings_ext/display/FluencyModeListPreference;->a(Lcom/android/settings_ext/display/FluencyModeListPreference;I)V

    .line 75
    return-void
.end method
