.class Lcom/android/settings_ext/dndmode/i;
.super Ljava/lang/Object;
.source "AutoTimeSettingsFragment.java"

# interfaces
.implements Lmiui/app/TimePickerDialog$OnTimeSetListener;


# instance fields
.field final synthetic WI:Lcom/android/settings_ext/dndmode/h;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/dndmode/h;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/settings_ext/dndmode/i;->WI:Lcom/android/settings_ext/dndmode/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Lmiui/widget/TimePicker;II)V
    .locals 3

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/i;->WI:Lcom/android/settings_ext/dndmode/h;

    invoke-static {v0}, Lcom/android/settings_ext/dndmode/h;->a(Lcom/android/settings_ext/dndmode/h;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/i;->WI:Lcom/android/settings_ext/dndmode/h;

    mul-int/lit8 v1, p2, 0x3c

    add-int/2addr v1, p3

    invoke-static {v0, v1}, Lcom/android/settings_ext/dndmode/h;->a(Lcom/android/settings_ext/dndmode/h;I)I

    .line 53
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/i;->WI:Lcom/android/settings_ext/dndmode/h;

    invoke-static {v0}, Lcom/android/settings_ext/dndmode/h;->b(Lcom/android/settings_ext/dndmode/h;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/dndmode/i;->WI:Lcom/android/settings_ext/dndmode/h;

    invoke-static {v1}, Lcom/android/settings_ext/dndmode/h;->c(Lcom/android/settings_ext/dndmode/h;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->setStartTimeForQuietMode(Landroid/content/Context;I)V

    .line 54
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/i;->WI:Lcom/android/settings_ext/dndmode/h;

    invoke-static {v0}, Lcom/android/settings_ext/dndmode/h;->d(Lcom/android/settings_ext/dndmode/h;)Lcom/android/settings_ext/dndmode/LabelPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/dndmode/i;->WI:Lcom/android/settings_ext/dndmode/h;

    iget-object v2, p0, Lcom/android/settings_ext/dndmode/i;->WI:Lcom/android/settings_ext/dndmode/h;

    invoke-static {v2}, Lcom/android/settings_ext/dndmode/h;->c(Lcom/android/settings_ext/dndmode/h;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings_ext/dndmode/h;->b(Lcom/android/settings_ext/dndmode/h;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    .line 60
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/i;->WI:Lcom/android/settings_ext/dndmode/h;

    mul-int/lit8 v1, p2, 0x3c

    add-int/2addr v1, p3

    invoke-static {v0, v1}, Lcom/android/settings_ext/dndmode/h;->c(Lcom/android/settings_ext/dndmode/h;I)I

    .line 57
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/i;->WI:Lcom/android/settings_ext/dndmode/h;

    invoke-static {v0}, Lcom/android/settings_ext/dndmode/h;->b(Lcom/android/settings_ext/dndmode/h;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/dndmode/i;->WI:Lcom/android/settings_ext/dndmode/h;

    invoke-static {v1}, Lcom/android/settings_ext/dndmode/h;->e(Lcom/android/settings_ext/dndmode/h;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->setEndTimeForQuietMode(Landroid/content/Context;I)V

    .line 58
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/i;->WI:Lcom/android/settings_ext/dndmode/h;

    invoke-static {v0}, Lcom/android/settings_ext/dndmode/h;->f(Lcom/android/settings_ext/dndmode/h;)Lcom/android/settings_ext/dndmode/LabelPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/dndmode/i;->WI:Lcom/android/settings_ext/dndmode/h;

    iget-object v2, p0, Lcom/android/settings_ext/dndmode/i;->WI:Lcom/android/settings_ext/dndmode/h;

    invoke-static {v2}, Lcom/android/settings_ext/dndmode/h;->e(Lcom/android/settings_ext/dndmode/h;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings_ext/dndmode/h;->b(Lcom/android/settings_ext/dndmode/h;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    goto :goto_0
.end method
