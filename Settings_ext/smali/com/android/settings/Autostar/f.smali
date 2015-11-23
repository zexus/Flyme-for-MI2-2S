.class Lcom/android/settings/Autostar/f;
.super Landroid/preference/Preference;
.source "Autoallow.java"


# instance fields
.field final synthetic bF:Lcom/android/settings/Autostar/d;

.field bG:Lcom/android/settings/Autostar/d;

.field bH:Landroid/widget/Button;

.field bI:Landroid/widget/TextView;

.field bl:Landroid/content/pm/ApplicationInfo;


# direct methods
.method public constructor <init>(Lcom/android/settings/Autostar/d;Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings/Autostar/d;Landroid/content/pm/ApplicationInfo;)V
    .locals 1

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/settings/Autostar/f;->bF:Lcom/android/settings/Autostar/d;

    .line 129
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 130
    const v0, 0x7f040015

    invoke-virtual {p0, v0}, Lcom/android/settings/Autostar/f;->setLayoutResource(I)V

    .line 131
    invoke-virtual {p0, p3}, Lcom/android/settings/Autostar/f;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 132
    invoke-virtual {p0, p4}, Lcom/android/settings/Autostar/f;->setTitle(Ljava/lang/CharSequence;)V

    .line 133
    iput-object p5, p0, Lcom/android/settings/Autostar/f;->bG:Lcom/android/settings/Autostar/d;

    .line 134
    iput-object p6, p0, Lcom/android/settings/Autostar/f;->bl:Landroid/content/pm/ApplicationInfo;

    .line 135
    return-void
.end method


# virtual methods
.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/settings/Autostar/f;->bl:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 143
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 144
    const v0, 0x7f100036

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/Autostar/f;->bH:Landroid/widget/Button;

    .line 145
    const v0, 0x7f100037

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/Autostar/f;->bI:Landroid/widget/TextView;

    .line 146
    iget-object v0, p0, Lcom/android/settings/Autostar/f;->bH:Landroid/widget/Button;

    const v1, 0x7f090c62

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 147
    iget-object v0, p0, Lcom/android/settings/Autostar/f;->bH:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/Autostar/f;->bF:Lcom/android/settings/Autostar/d;

    iget-object v1, v1, Lcom/android/settings/Autostar/d;->bE:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v0, p0, Lcom/android/settings/Autostar/f;->bH:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 149
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/Autostar/f;->bl:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/miui/AppOpsUtils;->getApplicationAutoStart(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/settings/Autostar/f;->bH:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/android/settings/Autostar/f;->bI:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/android/settings/Autostar/f;->bI:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/android/settings/Autostar/f;->bH:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method
