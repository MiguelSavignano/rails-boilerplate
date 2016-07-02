import React, { PropTypes } from 'react';
import _                    from 'lodash'

const IconLink = ( { onClick, iconClass, options } ) => (
  <a className="icon-link" onClick={onClick} {...options}>
    <i className={iconClass}></i>
  </a>
)
export default IconLink
