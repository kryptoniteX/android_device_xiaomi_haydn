/*
 * Copyright (C) 2018 The LineageOS Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package org.lineageos.settings.hightouch;

import android.content.Context;
import android.os.Bundle;
import androidx.preference.Preference;
import androidx.preference.Preference.OnPreferenceChangeListener;
import androidx.preference.PreferenceFragment;
import androidx.preference.SwitchPreference;

import org.lineageos.settings.R;
import org.lineageos.settings.utils.FileUtils;

public class HighTouchPollingRateSettingsFragment extends PreferenceFragment implements
        OnPreferenceChangeListener {

    private SwitchPreference mHighTouchPreference;
    private static final String HIGH_TOUCH_ENABLE_KEY = "high_touch_enable";
    private static final String HIGH_TOUCH_NODE = "/sys/devices/virtual/touch/touch_dev/bump_sample_rate";

    @Override
    public void onCreatePreferences(Bundle savedInstanceState, String rootKey) {
        addPreferencesFromResource(R.xml.hightouch_settings);
        mHighTouchPreference = (SwitchPreference) findPreference(HIGH_TOUCH_ENABLE_KEY);
        mHighTouchPreference.setEnabled(true);
        mHighTouchPreference.setOnPreferenceChangeListener(this);
    }

    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {
        if (HIGH_TOUCH_ENABLE_KEY.equals(preference.getKey())) {
            try {
                FileUtils.writeLine(HIGH_TOUCH_NODE, (Boolean) newValue ? "1" : "0");
            } catch(Exception e) {
            }
        }
        return true;
    }
}
