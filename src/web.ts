import { WebPlugin } from '@capacitor/core';

import type { ExitAppPlugin } from './definitions';

export class ExitAppWeb extends WebPlugin implements ExitAppPlugin {
  async exitApp(): Promise<void> {
    console.log('exitApp : This function works on mobile.');
  }
}
