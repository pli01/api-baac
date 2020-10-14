'use strict';

/**
 * Read the documentation (https://strapi.io/documentation/v3.x/concepts/controllers.html#core-controllers)
 * to customize this controller
 */

//module.exports = {};
const { sanitizeEntity } = require('strapi-utils');

module.exports = {
  /**
   * Retrieve records.
   *
   * @return {Array}
   */

/*
GET /caracteristiques
or
GET /caracteristiques/?dep=590"
or
GET /caracteristiques/?dep=590&com=51"
*/
  async find(ctx) {
    let entities;
    if (ctx.query._q) {
      entities = await strapi.services.caracteristique.search(ctx.query);
    } else {
      entities = await strapi.services.caracteristique.find(ctx.query);
    }

    return entities.map(entity => sanitizeEntity(entity, { model: strapi.models.caracteristique }));
  },
};

