import React, { ReactNode, Ref, PropsWithChildren } from 'react';
import clsx from 'clsx';
import SlickSlider, { Settings } from 'react-slick';

import { SliderArrow, sizes } from './slider-arrow';

import classes from './slider.module.scss';

export type SliderProps = PropsWithChildren<{
  settings?: Settings;
  className?: string;
  arrowSize?: keyof typeof sizes;
  dots: boolean;
  infinite?: boolean;
  innerRef?: Ref<HTMLDivElement>;
}>;

const Dots = (dots: ReactNode) => <div>{dots}</div>;
const NoPaging = () => <span />;

export const Slider = ({
  className,
  settings,
  children,
  arrowSize,
  dots,
  infinite,
  innerRef,
}: SliderProps) => {
  const sliderSettings: Settings = {
    className: classes.slider,
    // RESETS & DEFAULTS
    dots: dots,
    arrows: true,
    infinite: infinite ? true : false,
    speed: 500,
    lazyLoad: 'ondemand',

    // ARROWS
    prevArrow: <SliderArrow size={arrowSize || 'small'} type="prev" />,
    nextArrow: <SliderArrow size={arrowSize || 'small'} type="next" />,
    appendDots: Dots,
    customPaging: NoPaging,
    dotsClass: classes.dots,
    // SETTINGS FROM PARENT
    ...settings,
  };

  return (
    <div className={clsx(classes.slider, className)} ref={innerRef}>
      {/* WRAPPER */}
      <SlickSlider {...sliderSettings}>{children}</SlickSlider>
    </div>
  );
};
