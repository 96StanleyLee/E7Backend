--
-- PostgreSQL database dump
--

-- Dumped from database version 12.1
-- Dumped by pg_dump version 12.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: artifacts; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.artifacts (
    id bigint NOT NULL,
    image character varying,
    icon character varying,
    name character varying,
    rarity integer,
    role character varying,
    description character varying,
    skill_description character varying,
    variable double precision,
    api_id character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: artifacts_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.artifacts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: artifacts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.artifacts_id_seq OWNED BY public.artifacts.id;


--
-- Name: auths; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auths (
    id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: auths_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.auths_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auths_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.auths_id_seq OWNED BY public.auths.id;


--
-- Name: comments; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.comments (
    id bigint NOT NULL,
    comment character varying,
    user_id bigint NOT NULL,
    ownership_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: comments_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.comments_id_seq OWNED BY public.comments.id;


--
-- Name: heros; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.heros (
    id bigint NOT NULL,
    name character varying,
    rarity integer,
    role character varying,
    zodiac character varying,
    icon character varying,
    image character varying,
    api_id character varying,
    description character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: heros_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.heros_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: heros_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.heros_id_seq OWNED BY public.heros.id;


--
-- Name: ownerships; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ownerships (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    hero_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    builds character varying,
    reviewed boolean
);


--
-- Name: ownerships_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.ownerships_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ownerships_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.ownerships_id_seq OWNED BY public.ownerships.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


--
-- Name: skills; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.skills (
    id bigint NOT NULL,
    name character varying,
    description character varying,
    icon character varying,
    hero_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: skills_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.skills_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: skills_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.skills_id_seq OWNED BY public.skills.id;


--
-- Name: stats; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.stats (
    id bigint NOT NULL,
    attack integer,
    hp integer,
    def integer,
    speed integer,
    crit double precision,
    cdmg double precision,
    story character varying,
    hero_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: stats_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.stats_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: stats_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.stats_id_seq OWNED BY public.stats.id;


--
-- Name: suggestions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.suggestions (
    id bigint NOT NULL,
    hero_id bigint NOT NULL,
    artifact_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: suggestions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.suggestions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: suggestions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.suggestions_id_seq OWNED BY public.suggestions.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    username character varying,
    password_digest character varying,
    email character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    user_token character varying,
    user_type character varying
);


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: artifacts id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.artifacts ALTER COLUMN id SET DEFAULT nextval('public.artifacts_id_seq'::regclass);


--
-- Name: auths id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auths ALTER COLUMN id SET DEFAULT nextval('public.auths_id_seq'::regclass);


--
-- Name: comments id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comments ALTER COLUMN id SET DEFAULT nextval('public.comments_id_seq'::regclass);


--
-- Name: heros id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.heros ALTER COLUMN id SET DEFAULT nextval('public.heros_id_seq'::regclass);


--
-- Name: ownerships id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ownerships ALTER COLUMN id SET DEFAULT nextval('public.ownerships_id_seq'::regclass);


--
-- Name: skills id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.skills ALTER COLUMN id SET DEFAULT nextval('public.skills_id_seq'::regclass);


--
-- Name: stats id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.stats ALTER COLUMN id SET DEFAULT nextval('public.stats_id_seq'::regclass);


--
-- Name: suggestions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.suggestions ALTER COLUMN id SET DEFAULT nextval('public.suggestions_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2020-05-13 17:35:50.283526	2020-05-13 17:35:50.283526
schema_sha1	fdb920327a023a56b68af7af768aeac6cc4af48a	2020-05-13 17:35:50.289348	2020-05-13 17:35:50.289348
\.


--
-- Data for Name: artifacts; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.artifacts (id, image, icon, name, rarity, role, description, skill_description, variable, api_id, created_at, updated_at) FROM stdin;
6	https://assets.epicsevendb.com/_source/item_arti/art0088_fu.png	https://assets.epicsevendb.com/_source/item_arti/icon_art0088.png	Black Hand of the Goddess	5	mage	A glove made to maximize an enhanced mage's magic. It draws out limitless power so that one may fight against many. However, because it was made without consideration of the harmful effects it may have upon the wearer, the wearer suffers from terrible side effects.	The caster's Critical Hit Chance increases by 24% at the start of battle. Effect decreases by 2.2% every time the caster attacks, down to 11%.	0.24	black-hand-of-the-goddess	2020-05-14 15:58:33.36608	2020-05-14 15:59:15.958124
3	https://assets.epicsevendb.com/_source/item_arti/art0082_fu.png	https://assets.epicsevendb.com/_source/item_arti/icon_art0082.png	Alencinox's Wrath	5	warrior	The most vulnerable point on a Dragon's body is protected by their toughest scales. An accurate shot can kill a Dragon in an instant, but if you miss, their wrath will ensure you do not live long enough to regret it.	Caster's Critical Hit Chance increases by 20% whenever somebody's turn starts. Effect can only stack up to 20 times.	0.02	alencinoxs-wrath	2020-05-14 15:58:33.362663	2020-05-14 15:59:15.437729
5	https://assets.epicsevendb.com/_source/item_arti/art0067_fu.png	https://assets.epicsevendb.com/_source/item_arti/icon_art0067.png	Bastion of Perlutia	5	knight	A divine weapon passed down in the Perlutia family that may only be wielded by those born to be leaders. It chooses its master of its own will and rearranges its dark, hexagonal pieces to take the form most optimal for any situation. It was locked away for decades with no one to wield it, but finally, it has found a new master to bring it back into the world.	At the start of battle, grants a barrier equivalent to 30% of the caster's max Health to the ally with the highest Attack for 2 turns.	0.3	bastion-of-perlutia	2020-05-14 15:58:33.364989	2020-05-14 15:59:15.786975
9	https://assets.epicsevendb.com/_source/item_arti/art0069_fu.png	https://assets.epicsevendb.com/_source/item_arti/icon_art0069.png	Bloody Rose	5	mage	"I will steal that power from him and bring my family back from the dead, then he too will learn how it feels to lose everything. Just watch me."	Increases Effectiveness by 60% on a Single Attack.	0.6	bloody-rose	2020-05-14 15:58:33.369754	2020-05-14 16:00:20.016242
11	https://assets.epicsevendb.com/_source/item_arti/art0032_fu.png	https://assets.epicsevendb.com/_source/item_arti/icon_art0032.png	Celestine	5	manauser	A rare ore extracted from near the Sanctuary. Known as the Blessing of Diche, it has the power to infuse the wearer with the energy of life and is carried by royalty and some high-ranking priests.	Heals the ally with the lowest Health by 16% when using a basic skill.	0.16	celestine	2020-05-14 15:58:33.372422	2020-05-14 16:00:20.354267
1	https://assets.epicsevendb.com/_source/item_arti/art5_5_fu.png	https://assets.epicsevendb.com/_source/item_arti/icon_art5_5.png	Abyssal Crown	5	mage	May those ruled by the crown walk the road of corruption forever.\\n- Witch Reinwood, hung high up on the stake	24% chance to stun the enemy for 1 turn after attacking.	0.24	abyssal-crown	2020-05-14 15:58:33.356748	2020-05-14 15:59:14.979975
2	https://assets.epicsevendb.com/_source/item_arti/art0089_fu.png	https://assets.epicsevendb.com/_source/item_arti/icon_art0089.png	Alabastron	5	assassin	A bottle that contains a mystical fragrant oil infused with the power of Lunaris. It is said that if you perform a purifying ceremony with this, you will be granted life as a sacred being.	Increases the caster's Effectiveness by 35%. Has a 50% chance to increase Speed for 1 turn at the end of the caster's turn.	0.5000000000000002	alabastron	2020-05-14 15:58:33.361269	2020-05-14 15:59:15.268213
4	https://assets.epicsevendb.com/_source/item_arti/art0036_fu.png	https://assets.epicsevendb.com/_source/item_arti/icon_art0036.png	Alexa's Basket	5	assassin	A basket Alexa carries whenever she goes on a picnic with someone she wishes to become close to, containing everything necessary for a nice lunch in a beautiful forest. Just taking it along will elicit the joy of a pleasant picnic outing.	40% chance each to grant increased Attack (Greater) and Critical Hit Chance to the caster for 1 turn at the start of the turn.	0.4	alexas-basket	2020-05-14 15:58:33.363877	2020-05-14 15:59:15.611901
8	https://assets.epicsevendb.com/_source/item_arti/art4_17_fu.png	https://assets.epicsevendb.com/_source/item_arti/icon_art4_17.png	Bloodstone	5	ranger	As I took a bite of the fruit, a red liquid spilled out. Instead of the copper smell of blood, the sweet scent of fruit emanated from it.	Heals the ally with the lowest Health by 26% of damage dealt.	0.26	bloodstone	2020-05-14 15:58:33.368499	2020-05-14 16:00:19.862065
10	https://assets.epicsevendb.com/_source/item_arti/art0044_fu.png	https://assets.epicsevendb.com/_source/item_arti/icon_art0044.png	Border Coin	5	warrior	"Heads, I'll pretend I didn't see anything and let you go free. But tails..."\\nCountless people have had their fortunes rely on this old gold coin.	Increases Attack by 15% after using a non-attack skill. Effect can only stack up to 3 times.	0.15000000000000005	border-coin	2020-05-14 15:58:33.371011	2020-05-14 16:00:20.175842
12	https://assets.epicsevendb.com/_source/item_arti/art0029_fu.png	https://assets.epicsevendb.com/_source/item_arti/icon_art0029.png	Chatty	5	mage	I was once the best mercenary in the world!! Before Serila... No, master trapped my soul inside this lantern.	100% chance to be granted a barrier for 2 turns after being attacked when attack causes Health to fall below 50%. Barrier strength is proportional to the caster's Attack. Can be activated once every 2 turns.	1	chatty	2020-05-14 15:58:33.373719	2020-05-14 16:00:20.520978
13	https://assets.epicsevendb.com/_source/item_arti/art0058_fu.png	https://assets.epicsevendb.com/_source/item_arti/icon_art0058.png	Creation & Destruction	5	warrior	A scissor-like weapon that can be used as two separate swords, forged by the greatest blacksmith at Lilibet's request. In mockery of the official religion of Rekos, the blades are named after Cho and Mal, the demons of creation and destruction.	20% chance for skill cooldown not to occur.	0.2	creation-destruction	2020-05-14 15:58:33.374972	2020-05-14 16:00:20.655891
14	https://assets.epicsevendb.com/_source/item_arti/art5_16_fu.png	https://assets.epicsevendb.com/_source/item_arti/icon_art5_16.png	Cruel Mischief	5		Once upon a time, a girl's parents asked a mage to transform their tomboyish daughter into an elegant lady. He fulfilled their request, and the parents were thrilled to see how obedient she had become, not realizing she had been replaced by a doll.	Increases damage dealt in the Hall of Trials by 30%.	0.3	cruel-mischief	2020-05-14 15:58:33.376225	2020-05-14 16:00:20.829152
15	https://assets.epicsevendb.com/_source/item_arti/art0061_fu.png	https://assets.epicsevendb.com/_source/item_arti/icon_art0061.png	Dignus Orb	5	mage	"Whenever times are hard, I just look up to the sky, and it shows me the way forward."	Grants a barrier equivalent to 120% of Attack for 2 turns when the caster uses a non-attack skill and increases the damage of the next attack by 15%.	1.2	dignus-orb	2020-05-14 15:58:33.377527	2020-05-14 16:00:20.9983
16	https://assets.epicsevendb.com/_source/item_arti/art0070_fu.png	https://assets.epicsevendb.com/_source/item_arti/icon_art0070.png	Draco Plate	5	warrior	"Isn't it ironic? That Dragon's skin and bones are now used to make armor to protect the very Dragon Knights of Wintenberg it cursed as it died."\\nThe queen laughed as she wiped the blood from her armor.	Increases Critical Hit Damage by 30% while decreasing damage suffered from critical hits by 16%. When more than one similar effect is granted, only the strongest effect is applied.	0.3	draco-plate	2020-05-14 15:58:33.378789	2020-05-14 16:00:21.172867
17	https://assets.epicsevendb.com/_source/item_arti/art0002_fu.png	https://assets.epicsevendb.com/_source/item_arti/icon_art0002.png	Durandal	5	warrior	The soft light emitted by the sword shields its owner from all injuries.	When the caster's Health is less than 75%, Combat Readiness increases by 16% when attacked.	0.16	durandal	2020-05-14 15:58:33.38003	2020-05-14 16:00:21.335195
18	https://assets.epicsevendb.com/_source/item_arti/art0084_fu.png	https://assets.epicsevendb.com/_source/item_arti/icon_art0084.png	Dux Noctis	5	ranger	"According to my mother, this necklace holds a wolf's power. That's why it shines brighter on nights you can see the moon clearly. It means the wolf will soon begin its relentless chase."	Increases Attack of the caster by 2% when an ally makes a critical hit. Effect can only stack up to 12 times.	0.020000000000000007	dux-noctis	2020-05-14 15:58:33.381227	2020-05-14 16:00:21.614744
19	https://assets.epicsevendb.com/_source/item_arti/art5_1_fu.png	https://assets.epicsevendb.com/_source/item_arti/icon_art5_1.png	Elbris Ritual Sword	5	knight	A ceremonial sword handed down by the Elves for thousands of years, the blade is infused with several springs of magic. The person who owns this sword becomes the king of Elves.	Has a 20% chance to counterattack when an ally except for the caster is attacked.	0.2	elbris-ritual-sword	2020-05-14 15:58:33.38239	2020-05-14 16:00:21.760076
20	https://assets.epicsevendb.com/_source/item_arti/art5_9_fu.png	https://assets.epicsevendb.com/_source/item_arti/icon_art5_9.png	Etica's Scepter	5	mage	When the empire is in its greatest peril, the exiled princess, Etica, will return with the five spirits to take back the royal hall and call down a rain of repentance to save the devastated world.	50% chance to decrease skill cooldown by 1 turn at the beginning of the turn.	0.5	eticas-scepter	2020-05-14 15:58:33.383475	2020-05-14 16:00:21.918952
21	https://assets.epicsevendb.com/_source/item_arti/art0086_fu.png	https://assets.epicsevendb.com/_source/item_arti/icon_art0086.png	Guiding Light	5	ranger	The bright star shining within the dark crystal resembles the North Star, and is determined to guide people through chaotic times.	Has a 70% chance to be granted stealth for 2 turns at the end of the caster's turn. Can be activated once every 2 turns.	0.7000000000000003	guiding-light	2020-05-14 15:58:33.38454	2020-05-14 16:00:22.097063
22	https://assets.epicsevendb.com/_source/item_arti/art4_9_fu.png	https://assets.epicsevendb.com/_source/item_arti/icon_art4_9.png	Holy Sacrifice	5	knight	The Statue of Grace is given to whichever knight wins the Goddess's favor and will save them from death once before shattering to pieces.\\nWritten by Barrett [Treasures of the Sacred Kingdom, 15p]	100% chance to be revived with 25% Health and granted a barrier for 1 turn after dying. Barrier strength is proportional to the caster's max Health. Can only be activated once. 	1	holy-sacrifice	2020-05-14 15:58:33.385576	2020-05-14 16:00:22.443711
23	https://assets.epicsevendb.com/_source/item_arti/art0039_fu.png	https://assets.epicsevendb.com/_source/item_arti/icon_art0039.png	Idol's Cheer	5	manauser	I believe that music can change the world. Because it changed me!	When attacked, increases Combat Readiness of the ally with the highest Attack by 20%.	0.2	idols-cheer	2020-05-14 15:58:33.386609	2020-05-14 16:00:22.612777
24	https://assets.epicsevendb.com/_source/item_arti/art0038_fu.png	https://assets.epicsevendb.com/_source/item_arti/icon_art0038.png	Iron Fan	5	ranger	"Ladies use fans for many purposes: hiding smiles, expressing feelings indirectly, and of course, eliminating enemies."	Damage dealt increases by 32% when attacking an Ice elemental target.	0.32	iron-fan	2020-05-14 15:58:33.387644	2020-05-14 16:00:22.773299
25	https://assets.epicsevendb.com/_source/item_arti/art0052_fu.png	https://assets.epicsevendb.com/_source/item_arti/icon_art0052.png	Junkyard Dog	5	warrior	A weapon created to embody the ability of the Outrage. It is a combination of the Fireseal and the Flashing Tooth, which is one of the Sacred Treasures, originally possessed by the Conclave on Sol's home planet.	50% chance to burn enemy for 2 turns after using basic skill.	0.5	junkyard-dog	2020-05-14 15:58:33.388691	2020-05-14 16:00:22.929906
26	https://assets.epicsevendb.com/_source/item_arti/art0043_fu.png	https://assets.epicsevendb.com/_source/item_arti/icon_art0043.png	Justice for All	5	knight	A gauntlet made the year the first member of the Sharon family was knighted. It represents the pursuit of justice to be shared by all who follow the Goddess and the kingdom, rather than just for the sake of oneself.	100% chance to grant the caster a random buff for 2 turns at the end of the turn (Increase Attack, Defense, Speed, or Critical Hit Chance, Barrier, Immunity, Continuous Heal, or Critical Hit Resistance). Barrier strength increases proportional to the caster's max Health.	1	justice-for-all	2020-05-14 15:58:33.389737	2020-05-14 16:00:23.072651
28	https://assets.epicsevendb.com/_source/item_arti/art0083_fu.png	https://assets.epicsevendb.com/_source/item_arti/icon_art0083.png	Merciless Glutton	5	warrior	This blade's name is derived from the brutal scar it leaves behind, which makes it appear as though the victim's skin was torn by the bite of a giant beast. In order to effectively control the blade, a strength that goes beyond the realm of Humans is needed.	Increases the caster's Combat Readiness by 15% when an enemy is defeated, with a 100% chance to increase Effectiveness for 2 turns. Can only be activated once per skill.	1.0000000000000004	merciless-glutton	2020-05-14 15:58:33.391835	2020-05-14 16:00:48.917744
30	https://assets.epicsevendb.com/_source/item_arti/art0047_fu.png	https://assets.epicsevendb.com/_source/item_arti/icon_art0047.png	Necro & Undine	5	mage	Two sentient wings on Dizzy's back. When attacking, the green wing becomes Necro, a grim reaper, and the blue wing becomes Undine, an angel. Though their personalities often clash, both of them consider Dizzy's safety their highest priority.	Increases the caster's Combat Readiness by 20% after using an attack that targets all enemies. This effect is not activated by a counterattack, Dual Attack, or extra attack.	0.2	necro-undine	2020-05-14 15:58:33.394518	2020-05-14 16:01:01.495065
31	https://assets.epicsevendb.com/_source/item_arti/art0033_fu.png	https://assets.epicsevendb.com/_source/item_arti/icon_art0033.png	Noble Oath	5	knight	An emblem given to members of Ezera's Orders after they pledge to dedicate their lives to the Goddess. Those given to knights resemble an escutcheon, while those given to priests resemble a rosary.	As Health decreases, Defense and Effect Resistance increase by up to 100%.	1	noble-oath	2020-05-14 15:58:33.395863	2020-05-14 16:01:01.652726
32	https://assets.epicsevendb.com/_source/item_arti/art0028_fu.png	https://assets.epicsevendb.com/_source/item_arti/icon_art0028.png	Otherworldly Machinery	5	ranger	For the people of Orbis, Yuna's cellphone is a peculiar item that they couldn't understand.	Increases damage of attacks that target all enemies by 16%.	0.16	otherworldly-machinery	2020-05-14 15:58:33.397208	2020-05-14 16:01:01.819253
33	https://assets.epicsevendb.com/_source/item_arti/art0051_fu.png	https://assets.epicsevendb.com/_source/item_arti/icon_art0051.png	Proof of Valor	5		"Though courage and daring may not be visible to mortal eyes, this insignia will act as proof of yours. From now on, everyone you meet shall know of your valor."	Decreases damage taken by 30%. Effect decreases by 1.5% with each attack suffered, down to 15%. When more than one damage reduction effect is granted, only the strongest effect is applied. This artifact can only apply to one Hero within a party.	0.3	proof-of-valor	2020-05-14 15:58:33.398579	2020-05-14 16:01:01.9959
34	https://assets.epicsevendb.com/_source/item_arti/art0062_fu.png	https://assets.epicsevendb.com/_source/item_arti/icon_art0062.png	Reingar's Special Drink	5	ranger	A drink specially made in Reingar. With its pretty color and sweet scent, this drink is great for relaxation. They say this drink also enhances concentration, memorization, and judgment, but this hasn't been verified yet.	When attacking all enemies, has a 100% chance to inflict additional damage after attacking. Additional damage dealt increases proportional to the caster's Attack.	1	reingars-special-drink	2020-05-14 15:58:33.399853	2020-05-14 16:01:02.17907
35	https://assets.epicsevendb.com/_source/item_arti/art5_11_fu.png	https://assets.epicsevendb.com/_source/item_arti/icon_art5_11.png	Rhianna & Luciella	5	assassin	You're today's target. I'll let you know now that there's nowhere to run.\\n- Moon Assassins, Rhianna and Luciella	20% chance to be granted an extra turn at the end of the turn. Can be activated once per turn.	0.2	rhianna-luciella	2020-05-14 15:58:33.401045	2020-05-14 16:01:04.249842
36	https://assets.epicsevendb.com/_source/item_arti/art0001_fu.png	https://assets.epicsevendb.com/_source/item_arti/icon_art0001.png	Rod of Amaryllis	5	manauser	Everyone who fights for the salvation of the world will have the divine protection of the Goddess.	Heals the ally with the lowest Health by 24% after using a non-attack skill.	0.24	rod-of-amaryllis	2020-05-14 15:58:33.402489	2020-05-14 16:01:04.434178
37	https://assets.epicsevendb.com/_source/item_arti/art5_4_fu.png	https://assets.epicsevendb.com/_source/item_arti/icon_art5_4.png	Shimadra Staff	5	manauser	Let's end this together.\\n- The Great Fallen Priest, Shimadra	Increases Effect Resistance of all allies by 20% and the effect of healing received by all allies by 40%. Effect does not stack with other Artifacts of the same name. When more than one increased healing effect is granted, only the strongest effect is applied.	0.4	shimadra-staff	2020-05-14 15:58:33.403715	2020-05-14 16:01:04.706243
38	https://assets.epicsevendb.com/_source/item_arti/art5_21_fu.png	https://assets.epicsevendb.com/_source/item_arti/icon_art5_21.png	Sigurd Scythe	5	warrior	As the moonlight revealed a figure holding a scythe, the astonished onlookers exclaimed "the God of Death has descended!"	When the caster's Health is less than 50%, increases Attack by 25% and absorbs 50% of the damage dealt as Health.	0.5	sigurd-scythe	2020-05-14 15:58:33.404896	2020-05-14 16:01:04.886828
39	https://assets.epicsevendb.com/_source/item_arti/art5_2_fu.png	https://assets.epicsevendb.com/_source/item_arti/icon_art5_2.png	Song of Stars	5	ranger	As the strings start to vibrate, the starlight illuminates her.	100% chance for an enemy to become targeted for 2 turns after a single attack.	1	song-of-stars	2020-05-14 15:58:33.406046	2020-05-14 16:01:05.03307
40	https://assets.epicsevendb.com/_source/item_arti/art0049_fu.png	https://assets.epicsevendb.com/_source/item_arti/icon_art0049.png	Spirit's Breath	5	mage	Through them... I can feel it. The pain and agony in this world...\\nIt is said that only a few Shaman of Rekos can hear the Spirits' whispers.	100% chance to decrease skill cooldown by 1 turn when using a non-attack skill.	1	spirits-breath	2020-05-14 15:58:33.407237	2020-05-14 16:01:05.179403
42	https://assets.epicsevendb.com/_source/item_arti/art0078_fu.png	https://assets.epicsevendb.com/_source/item_arti/icon_art0078.png	Stella Harpa	5	manauser	An ancient relic of the Shandra Empire handed down between the High Priests and Priestesses of Constella. It is said that when the harp is played while singing, stars fall from the night sky and fireflies soar upward.	60% chance to dispel one debuff from an ally when attacked.	0.6	stella-harpa	2020-05-14 15:58:33.410282	2020-05-14 16:01:18.519604
43	https://assets.epicsevendb.com/_source/item_arti/art0046_fu.png	https://assets.epicsevendb.com/_source/item_arti/icon_art0046.png	Sword of Ezera	5	knight	"Because the color and shape is different to the holy sword wielded by the real life Ezeran legend..."\\nThe final part of the etching on the sword's hilt has been lost to time, but a mysterious force can still be felt flowing through the blade.	Decreases damage suffered by the caster from Elite or Boss monsters by 30%. When more than one similar effect is granted, only the strongest effect is applied.	0.3	sword-of-ezera	2020-05-14 15:58:33.41177	2020-05-14 16:01:18.696992
45	https://assets.epicsevendb.com/_source/item_arti/art0041_fu.png	https://assets.epicsevendb.com/_source/item_arti/icon_art0041.png	Sword of Judgment	5	ranger	"If you truly are innocent, then the Goddess will save you from my sword." Whether it is blood or the dark red of rose petals that falls in that next moment, it is unclear.	20% chance to attack again with a basic skill when the target survives a Single Attack. Can only be activated once per turn.	0.2	sword-of-judgment	2020-05-14 15:58:33.41398	2020-05-14 16:01:30.059626
46	https://assets.epicsevendb.com/_source/item_arti/art0027_fu.png	https://assets.epicsevendb.com/_source/item_arti/icon_art0027.png	Time Matter	5	mage	A source of power that Guardian Kazran wields that controls time. It can bring forth a time in the past that no one can remember.	Reduces skill cooldown by 1 turn when an enemy is killed by an attack and increases the damage of the next attack by 36%. Can only be activated once per skill.	0.36	time-matter	2020-05-14 15:58:33.415034	2020-05-14 16:01:30.209094
47	https://assets.epicsevendb.com/_source/item_arti/art0050_fu.png	https://assets.epicsevendb.com/_source/item_arti/icon_art0050.png	Torn Sleeve	5	assassin	A torn sleeve out of which various weapons appear as though they are prosthetic limbs. She never has explained how she manages to fit so many things up there.	100% chance to inflict bleeding for 2 turns after a single attack.	1	torn-sleeve	2020-05-14 15:58:33.416013	2020-05-14 16:01:30.345695
48	https://assets.epicsevendb.com/_source/item_arti/art0091_fu.png	https://assets.epicsevendb.com/_source/item_arti/icon_art0091.png	Touch of Rekos	5	manauser	An artifact handed down by the god Rekos after the Spirit Shrine was built. It is said that this item, containing the power of a god, is bestowed upon the most qualified shaman.	Recovers the Health of all allies by 10% after being attacked. This effect can only be activated once per turn. Amount recovered increases proportional to the target's max Health.	0.1	touch-of-rekos	2020-05-14 15:58:33.416999	2020-05-14 16:01:30.52099
49	https://assets.epicsevendb.com/_source/item_arti/art0030_fu.png	https://assets.epicsevendb.com/_source/item_arti/icon_art0030.png	Uberius's Tooth	5	warrior	Treasure of the Wintenberg royal family made from the remains of wicked dragon Uberius. It's said to be capable of ripping dragon scale armor.	100% chance to inflict additional damage after a Single Attack. Additional damage increases proportional to the caster's Attack.	1	uberiuss-tooth	2020-05-14 15:58:33.417963	2020-05-14 16:01:30.702635
50	https://assets.epicsevendb.com/_source/item_arti/art0079_fu.png	https://assets.epicsevendb.com/_source/item_arti/icon_art0079.png	Unfading Memories	5	manauser	Diene always kept a dried forget-me-not in her pocket watch, shimmering with bright blue light as if it were picked only a day earlier.	Heals all allies by 80% after using a non-attack skill.	0.08000000000000003	unfading-memories	2020-05-14 15:58:33.419154	2020-05-14 16:01:30.847488
51	https://assets.epicsevendb.com/_source/item_arti/art0040_fu.png	https://assets.epicsevendb.com/_source/item_arti/icon_art0040.png	Violet Talisman	5	assassin	As long as you believe in victory, the light of hope shall never fade. Remember that, my son. Our family's legacy now rests on your shoulders.\\n- Violet's Father	Increases Attack by 10% and Evasion by 10% at the start of every turn. Each effect can stack up to 3 times, and resets at the start of battle.	0.1	violet-talisman	2020-05-14 15:58:33.420199	2020-05-14 16:01:30.983693
52	https://assets.epicsevendb.com/_source/item_arti/art4_1_fu.png	https://assets.epicsevendb.com/_source/item_arti/icon_art4_1.png	Wind Rider	5	assassin	Famously known as the Phantom Wind, Rinak would sneak into the mansions of the rich with ghost-like stealth and vanish with their most expensive possessions.	Casts stealth for 1 turn and increases Attack of the next turn by 60% when the caster defeats an enemy.	0.6	wind-rider	2020-05-14 15:58:33.421217	2020-05-14 16:01:31.135576
\.


--
-- Data for Name: auths; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auths (id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: comments; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.comments (id, comment, user_id, ownership_id, created_at, updated_at) FROM stdin;
1	Meh...	1	1	2020-05-18 17:38:40.447221	2020-05-18 17:38:40.447221
2	Really bad...	1	5	2020-05-18 18:41:05.328899	2020-05-18 18:41:05.328899
18	Hm	1	1	2020-05-19 20:18:20.306286	2020-05-19 20:18:20.306286
\.


--
-- Data for Name: heros; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.heros (id, name, rarity, role, zodiac, icon, image, api_id, description, created_at, updated_at) FROM stdin;
4	Aramintha	5	mage	twins	https://assets.epicsevendb.com/_source/face/c1048_s.png	https://assets.epicsevendb.com/herofull/aramintha.png	aramintha	Leader of the Phantom CIC, Unknown investigators	2020-05-13 17:35:56.558128	2020-05-13 19:14:05.788727
5	Arbiter Vildred	5	assassin	lion	https://assets.epicsevendb.com/_source/face/c2007_s.png	https://assets.epicsevendb.com/herofull/arbiter-vildred.png	arbiter-vildred	A knight who has embraced the boundless power of darkness	2020-05-13 17:35:56.559305	2020-05-13 19:14:27.902521
6	Baal & Sezan	5	mage	twins	https://assets.epicsevendb.com/_source/face/c1015_s.png	https://epic7x.com/wp-content/uploads/2019/01/baal-new.png	baal-sezan	A great magician-turned-doll, and her faithful apprentice	2020-05-13 17:35:56.56051	2020-05-13 19:15:07.42139
8	Basar	5	mage	waterbearer	https://assets.epicsevendb.com/_source/face/c1053_s.png	https://assets.epicsevendb.com/_source/face/c1053_su.png	basar	A genius holding sway over the economy of an entire continent	2020-05-13 17:35:56.563141	2020-05-13 19:15:45.879595
11	Cecilia	5	knight	ram	https://assets.epicsevendb.com/_source/face/c1002_s.png	https://assets.epicsevendb.com/herofull/cecilia.png	cecilia	Tough and beautiful\\nQueen of Wintenberg	2020-05-13 17:35:56.566267	2020-05-13 19:16:50.722947
12	Cerise	5	ranger	waterbearer	https://assets.epicsevendb.com/_source/face/c1081_s.png	https://assets.epicsevendb.com/_source/face/c1081_su.png	cerise	The young administrator of Aakhen who dreams of a better future	2020-05-13 17:35:56.567239	2020-05-13 19:17:23.788193
13	Cermia	5	warrior	lion	https://assets.epicsevendb.com/_source/face/c1079_s.png	https://assets.epicsevendb.com/herofull/cermia.png	cermia	A hot-headed knight who wields fire	2020-05-13 17:35:56.568246	2020-05-13 19:17:41.844445
15	Charlotte	5	knight	lion	https://assets.epicsevendb.com/_source/face/c1009_s.png	https://assets.epicsevendb.com/herofull/charlotte.png	charlotte	Duchess of La Mare, an elegant and domineering Lady of the Swamp	2020-05-13 17:35:56.571311	2020-05-13 19:18:18.788974
16	Chloe	5	warrior	archer	https://assets.epicsevendb.com/_source/face/c1049_s.png	https://assets.epicsevendb.com/herofull/chloe.png	chloe	A cheerful, violent, wandering doll	2020-05-13 17:35:56.572333	2020-05-13 19:18:29.789044
19	Destina	5	manauser	crab	https://assets.epicsevendb.com/_source/face/c2022_s.png	https://assets.epicsevendb.com/herofull/destina.png	destina	Beast of the Western Light, a Spirit Lord of Light and Autumn	2020-05-13 17:35:56.575057	2020-05-13 19:20:29.845139
20	Diene	5	manauser	twins	https://assets.epicsevendb.com/_source/face/c1076_s.png	https://assets.epicsevendb.com/herofull/diene.png	diene	A staunchly pious nun of Ezera	2020-05-13 17:35:56.576014	2020-05-13 19:20:47.87311
21	Dizzy	5	mage	bull	https://assets.epicsevendb.com/_source/face/c1094_s.png	https://epic7x.com/wp-content/uploads/2019/05/dizzy.png	dizzy	A pure-hearted half-Gear confronting fate	2020-05-13 17:35:56.576926	2020-05-13 17:36:09.365552
1	Alencia	5	warrior	crab	https://assets.epicsevendb.com/_source/face/c1100_s.png	https://assets.epicsevendb.com/_source/face/c1100_su.png	alencia	A pureblood who sees Humans as inferior	2020-05-13 17:35:56.548876	2020-05-13 19:13:02.023787
2	Ambitious Tywin	5	knight	archer	https://assets.epicsevendb.com/_source/face/c2042_s.png	https://assets.epicsevendb.com/_source/face/c2042_su.png	ambitious-tywin	Captain of the Royal Guard of Lefundos who seeks only to rise in station	2020-05-13 17:35:56.554872	2020-05-13 19:13:28.709328
3	Apocalypse Ravi	5	warrior	crab	https://assets.epicsevendb.com/_source/face/c2019_s.png	https://assets.epicsevendb.com/herofull/apocalypse-ravi.png	apocalypse-ravi	A girl born amidst calamity, revered as the god of war	2020-05-13 17:35:56.556707	2020-05-13 19:13:46.452562
7	Baiken	5	assassin	scorpion	https://assets.epicsevendb.com/_source/face/c1093_s.png	https://assets.epicsevendb.com/herofull/baiken.png	baiken	A one-armed, one-eyed samurai dreaming of revenge	2020-05-13 17:35:56.5617	2020-05-13 19:15:24.220048
9	Bellona	5	ranger	goat	https://assets.epicsevendb.com/_source/face/c1071_s.png	https://assets.epicsevendb.com/herofull/bellona.png	bellona	A noble lady of Ezera yearning for freedom	2020-05-13 17:35:56.564141	2020-05-13 19:16:01.271862
10	Blood Moon Haste	5	manauser	fish	https://assets.epicsevendb.com/_source/face/c2039_s.png	https://assets.epicsevendb.com/_source/face/c2039_su.png	blood-moon-haste	An arrogant young man of noble blood	2020-05-13 17:35:56.565197	2020-05-13 19:16:33.962313
14	Charles	5	knight	twins	https://assets.epicsevendb.com/_source/face/c1027_s.png	https://assets.epicsevendb.com/herofull/charles.png	charles	The highly respected Knight Commander of the Order of the Sword	2020-05-13 17:35:56.570137	2020-05-13 19:18:04.918412
17	Dark Corvus	5	warrior	goat	https://assets.epicsevendb.com/_source/face/c2012_s.png	https://assets.epicsevendb.com/_source/face/c2012_su.png	dark-corvus	A tired destroyer who despises the world	2020-05-13 17:35:56.573244	2020-05-13 19:18:58.229488
18	Desert Jewel Basar	5	manauser	archer	https://assets.epicsevendb.com/_source/face/c2053_s.png	https://assets.epicsevendb.com/_source/face/c2053_su.png	desert-jewel-basar	The most brilliant gem in the history of Ki Ruburan	2020-05-13 17:35:56.574156	2020-05-13 19:20:13.243754
22	Elena	5	manauser	twins	https://assets.epicsevendb.com/_source/face/c1091_s.png	https://epic7x.com/wp-content/uploads/2019/11/elena-full.png	elena	High Priestess of Constella gazing up at the shining stars	2020-05-13 17:35:56.577822	2020-05-13 17:36:09.534451
23	Faithless Lidica	5	ranger	twins	https://assets.epicsevendb.com/_source/face/c2046_s.png	https://epic7x.com/wp-content/uploads/2019/11/lidica-4.png\n	faithless-lidica	Striving for a new life while on the run	2020-05-13 17:35:56.578727	2020-05-13 17:36:09.705865
24	Fallen Cecilia	5	knight	archer	https://assets.epicsevendb.com/_source/face/c2002_s.png	https://epic7x.com/wp-content/uploads/2019/06/fallen-cecilia-full.png\n	fallen-cecilia	A dark dragon bound by a desire for revenge and an endless grudge	2020-05-13 17:35:56.57972	2020-05-13 17:36:09.922095
25	Haste	5	assassin	twins	https://assets.epicsevendb.com/_source/face/c1039_s.png	https://epic7x.com/wp-content/uploads/2019/01/haste-full.png	haste	An aloof boy trained in assassination	2020-05-13 17:35:56.580738	2020-05-13 17:36:10.121301
26	Iseria	5	ranger	lion	https://assets.epicsevendb.com/_source/face/c1024_s.png	https://epic7x.com/wp-content/uploads/2019/01/iseria-1.png	iseria	The Knight of White Flowers, protector of a solemn oath	2020-05-13 17:35:56.581674	2020-05-13 17:36:10.289768
27	Judge Kise	5	warrior	maiden	https://assets.epicsevendb.com/_source/face/c2006_s.png	https://epic7x.com/wp-content/uploads/2019/01/judge-kise.png	judge-kise	An observer of fate, the Heir who watches over the world	2020-05-13 17:35:56.582603	2020-05-13 17:36:11.238067
28	Kawerik	5	mage	maiden	https://assets.epicsevendb.com/_source/face/c1073_s.png	https://epic7x.com/wp-content/uploads/2019/06/kawerik3.png	kawerik	A mage left with nothing after seeking his revenge	2020-05-13 17:35:56.583584	2020-05-13 17:36:11.389927
29	Kayron	5	assassin	ram	https://assets.epicsevendb.com/_source/face/c1023_s.png	https://epic7x.com/wp-content/uploads/2019/01/kayron-full.png	kayron	The Shadow King who deals in grudges	2020-05-13 17:35:56.584503	2020-05-13 17:36:11.540188
30	Ken	5	warrior	goat	https://assets.epicsevendb.com/_source/face/c1047_s.png	https://epic7x.com/wp-content/uploads/2019/01/ken-full.png	ken	I will become stronger! A lively fist-fighter	2020-05-13 17:35:56.585434	2020-05-13 17:36:11.706049
31	Kise	5	assassin	lion	https://assets.epicsevendb.com/_source/face/c1006_s.png	https://epic7x.com/wp-content/uploads/2019/01/kise-full.png	kise	A mysterious woman who appears with the moonlight	2020-05-13 17:35:56.586614	2020-05-13 17:36:11.88191
32	Krau	5	knight	fish	https://assets.epicsevendb.com/_source/face/c1070_s.png	https://epic7x.com/wp-content/uploads/2019/01/krau-full.png	krau	A self-confident and forward-looking knight	2020-05-13 17:35:56.587733	2020-05-13 17:36:12.039836
33	Lidica	5	ranger	maiden	https://assets.epicsevendb.com/_source/face/c1046_s.png	https://epic7x.com/wp-content/uploads/2019/02/lidia-full.png	lidica	A hot-tempered member of the Phantom CIC, hunting Unknown	2020-05-13 17:35:56.588899	2020-05-13 17:36:12.212757
34	Lilias	5	knight	ram	https://assets.epicsevendb.com/_source/face/c1089_s.png	https://epic7x.com/wp-content/uploads/2019/09/lilias.png	lilias	Ambitious Citylord of Perland	2020-05-13 17:35:56.589968	2020-05-13 17:36:12.345653
35	Lilibet	5	warrior	scales	https://assets.epicsevendb.com/_source/face/c1095_s.png	https://epic7x.com/wp-content/uploads/2019/06/lilibet.png\n	lilibet	Mercenary of Rekos who wanted to be a tailor	2020-05-13 17:35:56.591302	2020-05-13 17:36:12.569751
36	Little Queen Charlotte	5	warrior	scales	https://assets.epicsevendb.com/_source/face/c2009_s.png	https://epic7x.com/wp-content/uploads/2020/03/charlotte-full.png\n	little-queen-charlotte	An elegant young queen who showed up to protect her land	2020-05-13 17:35:56.592434	2020-05-13 17:36:12.731155
37	Ludwig	5	mage	lion	https://assets.epicsevendb.com/_source/face/c1069_s.png	https://epic7x.com/wp-content/uploads/2019/01/ludwig-full.png	ludwig	The sole survivor of the Nocturnes	2020-05-13 17:35:56.59346	2020-05-13 17:36:12.942131
38	Luluca	5	mage	waterbearer	https://assets.epicsevendb.com/_source/face/c1082_s.png	https://epic7x.com/wp-content/uploads/2019/06/luluca-full.png\n	luluca	A shaman of Rekos who crossed the universe for revenge	2020-05-13 17:35:56.594677	2020-05-13 17:36:13.114436
39	Luna	5	warrior	scales	https://assets.epicsevendb.com/_source/face/c1066_s.png	https://epic7x.com/wp-content/uploads/2019/01/luna-full.png	luna	Half-Dragon of Wintenberg seeking vengeance	2020-05-13 17:35:56.595662	2020-05-13 17:36:13.278307
40	Maid Chloe	5	manauser	maiden	https://assets.epicsevendb.com/_source/face/c2049_s.png	https://epic7x.com/wp-content/uploads/2019/01/maid-chloe.png	maid-chloe	Clueless Queen of a maid cafe	2020-05-13 17:35:56.59663	2020-05-13 17:36:13.468863
41	Martial Artist Ken	5	warrior	lion	https://assets.epicsevendb.com/_source/face/c2047_s.png	https://epic7x.com/wp-content/uploads/2019/01/ken-full-1.png	martial-artist-ken	A boy heading for greatness	2020-05-13 17:35:56.597596	2020-05-13 17:36:13.639788
42	Melissa	5	mage	lion	https://assets.epicsevendb.com/_source/face/c1096_s.png	https://epic7x.com/wp-content/uploads/2019/10/melissa-full.png	melissa	A Vampire betrayed by her lover, crossing the ocean to take her revenge	2020-05-13 17:35:56.598607	2020-05-13 17:36:13.844892
43	Pavel	5	ranger	maiden	https://assets.epicsevendb.com/_source/face/c1080_s.png	https://epic7x.com/wp-content/uploads/2019/11/pavel-full.png	pavel	A patroller carrying the fate of Cidonia on his shoulders	2020-05-13 17:35:56.599555	2020-05-13 17:36:14.013827
44	Ravi	5	warrior	goat	https://assets.epicsevendb.com/_source/face/c1019_s.png	https://epic7x.com/wp-content/uploads/2019/01/ravi-full.png	ravi	The aggressive little girl reborn as a Wraith	2020-05-13 17:35:56.600512	2020-05-13 17:36:14.206857
45	Roana	5	manauser	fish	https://assets.epicsevendb.com/_source/face/c1102_s.png	https://epic7x.com/wp-content/uploads/2020/01/loeanna-full.png	roana	A tragic shaman who sees others' true natures	2020-05-13 17:35:56.601461	2020-05-13 17:36:14.388795
46	Ruele of Light	5	manauser	fish	https://assets.epicsevendb.com/_source/face/c1022_s.png	https://epic7x.com/wp-content/uploads/2019/01/ruele.png	ruele-of-light	A gentle saint shining with blessed light	2020-05-13 17:35:56.60247	2020-05-13 17:36:14.574547
47	Sage Baal & Sezan	5	mage	bull	https://assets.epicsevendb.com/_source/face/c2015_s.png	https://epic7x.com/wp-content/uploads/2019/04/sage-baal-and-sezan.png	sage-baal-sezan	An otherworldly romantic with all kinds of knowledge	2020-05-13 17:35:56.603441	2020-05-13 17:36:14.776821
48	Seaside Bellona	5	ranger	twins	https://assets.epicsevendb.com/_source/face/c5071_s.png	https://epic7x.com/wp-content/uploads/2019/07/belona-new.png\n	seaside-bellona	Ace of the Phantom CIC, brighter than the sun	2020-05-13 17:35:56.604418	2020-05-13 17:36:14.959739
49	Sez	5	assassin	scorpion	https://assets.epicsevendb.com/_source/face/c1038_s.png	https://epic7x.com/wp-content/uploads/2019/01/sez-full.png	sez	A living weapon, the cynical Berserker	2020-05-13 17:35:56.605379	2020-05-13 17:36:15.185434
50	Sigret	5	warrior	bull	https://assets.epicsevendb.com/_source/face/c1072_s.png	https://epic7x.com/wp-content/uploads/2019/01/sigret-full.png	sigret	An envious Homunculus searching for redemption	2020-05-13 17:35:56.606391	2020-05-13 17:36:15.349643
51	Silver Blade Aramintha	5	mage	twins	https://assets.epicsevendb.com/_source/face/c2048_s.png	https://epic7x.com/wp-content/uploads/2019/03/S3C2aEd.png	silver-blade-aramintha	Red scorpion of Savara who cuts through the sandstorms.	2020-05-13 17:35:56.60734	2020-05-13 17:36:15.516536
52	Sol	5	warrior	archer	https://assets.epicsevendb.com/_source/face/c1092_s.png	https://epic7x.com/wp-content/uploads/2019/04/sol.png	sol	The Flame of Corruption\\nwho scorches all enemies	2020-05-13 17:35:56.608304	2020-05-13 17:36:15.666586
53	Specimen Sez	5	assassin	scorpion	https://assets.epicsevendb.com/_source/face/c2038_s.png	https://epic7x.com/wp-content/uploads/2019/01/specimen-full.png	specimen-sez	A violent butcher who threatens Sez's life	2020-05-13 17:35:56.609526	2020-05-13 17:36:15.890511
54	Specter Tenebria	5	mage	twins	https://assets.epicsevendb.com/_source/face/c2050_s.png	https://epic7x.com/wp-content/uploads/2019/01/specter-tenebria-full.png	specter-tenebria	A poisonous nightmare seeped in cruelty	2020-05-13 17:35:56.611982	2020-05-13 17:36:16.108464
56	Tamarinne	5	manauser	archer	https://assets.epicsevendb.com/_source/face/c1067_s.png	https://epic7x.com/wp-content/uploads/2019/02/tamarine-full.png\n	tamarinne	Appearing with a flash and the sound of singing!	2020-05-13 17:35:56.614453	2020-05-13 17:36:16.279653
57	Tenebria	5	mage	crab	https://assets.epicsevendb.com/_source/face/c1050_s.png	https://epic7x.com/wp-content/uploads/2019/01/tenebria-1.png	tenebria	The Phantom Queen who deals in cruel illusions	2020-05-13 17:35:56.615577	2020-05-13 17:36:16.474014
58	Tywin	5	knight	ram	https://assets.epicsevendb.com/_source/face/c1042_s.png	https://epic7x.com/wp-content/uploads/2019/01/tywin-full.png	tywin	Captain of the Lefundos Royal Guard, a model of faithful diligence	2020-05-13 17:35:56.617026	2020-05-13 17:36:16.644212
59	Vildred	5	assassin	lion	https://assets.epicsevendb.com/_source/face/c1007_s.png	https://epic7x.com/wp-content/uploads/2019/01/vildred-full.png	vildred	A paragon of righteousness and principle, a reliable companion of Ras's	2020-05-13 17:35:56.618341	2020-05-13 17:36:16.838276
60	Violet	5	assassin	scorpion	https://assets.epicsevendb.com/_source/face/c1074_s.png	https://epic7x.com/wp-content/uploads/2019/01/violet-full.png	violet	A shameless narcissist with a free spirit	2020-05-13 17:35:56.61962	2020-05-13 17:36:17.02415
61	Vivian	5	mage	archer	https://assets.epicsevendb.com/_source/face/c1088_s.png	https://epic7x.com/wp-content/uploads/2019/08/vivian.png	vivian	Magical scholar and citylord of Witchaven, the City of Sorcerers	2020-05-13 17:35:56.621041	2020-05-13 17:36:17.253051
62	Yufine	5	warrior	bull	https://assets.epicsevendb.com/_source/face/c1016_s.png	https://epic7x.com/wp-content/uploads/2019/01/yufine-full.png	yufine	A lively Dragon girl who loves shiny things	2020-05-13 17:35:56.622367	2020-05-13 17:36:17.501375
63	Yuna	5	ranger	lion	https://assets.epicsevendb.com/_source/face/c1030_s.png	https://epic7x.com/wp-content/uploads/2019/01/yuna-full.png	yuna	President of the Reingar Student Council, the school girl from another world	2020-05-13 17:35:56.623547	2020-05-13 17:36:17.670089
64	Zeno	5	mage	bull	https://assets.epicsevendb.com/_source/face/c1083_s.png	https://epic7x.com/wp-content/uploads/2019/01/zeno-full.png	zeno	A fanatical mage corrupted by endless desire	2020-05-13 17:35:56.624606	2020-05-13 17:36:17.852143
\.


--
-- Data for Name: ownerships; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.ownerships (id, user_id, hero_id, created_at, updated_at, builds, reviewed) FROM stdin;
1	1	5	2020-05-16 22:44:13.125353	2020-05-21 17:42:30.651759	https://i.redd.it/wmij3d1aszr31.jpg	t
5	1	5	2020-05-18 16:31:46.47638	2020-05-21 17:42:47.320719	https://i.redd.it/5or540xfzi631.png	t
6	1	5	2020-05-19 16:43:29.903325	2020-05-21 17:42:53.233426	https://res.cloudinary.com/dgbb4embd/image/upload/v1589906609/k72lujsud8wfqqezszq0.jpg	t
17	1	5	2020-05-22 15:04:13.79038	2020-05-22 15:04:15.737237	https://res.cloudinary.com/dgbb4embd/image/upload/v1590159853/m2miv2sz9xhce5jnv5hr.jpg	t
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.schema_migrations (version) FROM stdin;
20200513160924
20200513160326
20200513160535
20200513160743
20200513160852
20200513200658
20200514152340
20200514152512
20200516173047
20200516223740
20200518172739
20200520012553
20200521173814
20200522143907
\.


--
-- Data for Name: skills; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.skills (id, name, description, icon, hero_id, created_at, updated_at) FROM stdin;
5	Catalyst	Sprinkles a catalyst, increasing Attack of all allies for 2 turns. When an enemy is burned, the catalyst will explode and deal damage to all enemies, making them unhealable for 2 turns.	https://assets.epicsevendb.com/_source/skill/sk_c1048_2.png	4	2020-05-13 17:36:21.068728	2020-05-13 17:36:21.068728
9	Dark Blade	Attacks all enemies, decreasing Hit Chance for 2 turns. When Focus is full, consumes it all, increasing damage dealt. When the enemy is defeated with this skill, cooldown does not occur.	https://assets.epicsevendb.com/_source/skill/sk_c2007_3.png	5	2020-05-13 17:36:21.2108	2020-05-13 17:36:21.2108
11	Dark Cloud	Summons the Cloud of Darkness to attack all enemies, dealing damage proportional to the number of debuffs inflicted on the enemy. When the enemy is defeated by this attack, the cooldown for Last Requiem is reset.	https://assets.epicsevendb.com/_source/skill/sk_c1015_2.png	6	2020-05-13 17:36:21.363675	2020-05-13 17:36:21.363675
15	Sandstorm	Attacks all enemies with sand magic, dispelling all buffs and decreasing Combat Readiness by 30%.	https://assets.epicsevendb.com/_source/skill/sk_c1053_3.png	8	2020-05-13 17:36:21.558523	2020-05-13 17:36:21.558523
16	Windbreak Fan	Attacks the enemy with a fan, dealing damage proportional to the enemy's max Health. When the caster's stacked Focus is more than 5, loses all Focus and activates Razorwind Fan.	https://assets.epicsevendb.com/_source/skill/sk_c1071_1.png	9	2020-05-13 17:36:21.735587	2020-05-13 17:36:21.735587
17	Butterfly Fan	Attacks all enemies by waving a fan. Damage dealt increases with more enemies.	https://assets.epicsevendb.com/_source/skill/sk_c1071_2.png	9	2020-05-13 17:36:21.739014	2020-05-13 17:36:21.739014
23	Luminous Explosion	Explodes a magical sphere, stunning for 1 turn, before increasing the caster's Combat Readiness by 50%.	https://assets.epicsevendb.com/_source/skill/sk_c1081_2.png	12	2020-05-13 17:36:22.035724	2020-05-13 17:36:22.035724
26	Hot Streak!	Shoots fire, resetting the cooldown of All-In! and granting an extra turn.	https://assets.epicsevendb.com/_source/skill/sk_c1079_2.png	13	2020-05-13 17:36:22.184087	2020-05-13 17:36:22.184087
27	All-In!	Attacks with a blazing inferno, penetrating Defense by 50%.	https://assets.epicsevendb.com/_source/skill/sk_c1079_3.png	13	2020-05-13 17:36:22.186108	2020-05-13 17:36:22.186108
29	Will of the Swamp	When attacked, the caster gains {{variable}} Fighting Spirit and is granted increased Attack and Defense for 1 turn.\\nWhen attacked on the caster’s turn, acquired Fighting Spirit is doubled. Increased Attack and Defense can only be granted once per turn.	https://assets.epicsevendb.com/_source/skill/sk_c1009_2.png	15	2020-05-13 17:36:22.328762	2020-05-13 17:36:22.328762
30	Vortex	Cuts all enemies while spinning, with a 75% chance to make them unhealable for 2 turns.	https://assets.epicsevendb.com/_source/skill/sk_c1009_3.png	15	2020-05-13 17:36:22.331031	2020-05-13 17:36:22.331031
31	Heavy Strike	Hammers the enemy. Damage dealt is increased when the enemy is inflicted with magic nail.	https://assets.epicsevendb.com/_source/skill/sk_c1049_1.png	16	2020-05-13 17:36:22.47477	2020-05-13 17:36:22.47477
32	Magic Bolt	Inflicts magic nail for 3 turns.	https://assets.epicsevendb.com/_source/skill/sk_c1049_2.png	16	2020-05-13 17:36:22.477399	2020-05-13 17:36:22.477399
33	Hyper Strike	Soars into the air and attacks the enemy, stunning for 1 turn. Damage dealt is increased when the enemy is inflicted with magic nail.	https://assets.epicsevendb.com/_source/skill/sk_c1049_3.png	16	2020-05-13 17:36:22.479502	2020-05-13 17:36:22.479502
36	Devil's Descent	Attacks with a lethal hit. Damage dealt is only affected by the caster's Health and does not trigger critical hit. Begins the battle with a full skill cooldown count.	https://assets.epicsevendb.com/_source/skill/sk_c2012_3.png	17	2020-05-13 17:36:22.630592	2020-05-13 17:36:22.630592
37	Key to an Oath	Attacks the enemy with a staff and heals the ally with the lowest Health. Healing increases proportional to the target's max Health.	https://assets.epicsevendb.com/_source/skill/sk_c2022_1.png	19	2020-05-13 17:36:22.816348	2020-05-13 17:36:22.816348
38	Regen	Blesses an ally, recovering their Health and increasing their Combat Readiness by 30%. Healing increases proportional to the caster's max Health.	https://assets.epicsevendb.com/_source/skill/sk_c2022_2.png	19	2020-05-13 17:36:22.862151	2020-05-13 17:36:22.862151
39	Destina's Grace	Grants all allies the blessing of a Spirit Lord, dispelling all debuffs and recovering Health. When ally is debuffed, their Combat Readiness will also be increased by 15%. Healing increases proportional to the caster's max Health.	https://assets.epicsevendb.com/_source/skill/sk_c2022_3.png	19	2020-05-13 17:36:22.864779	2020-05-13 17:36:22.864779
41	Blessings of the Goddess	With the Blessings of the Goddess, covers all allies with a barrier for 2 turns before dispelling one debuff. Barrier strength increases proportional to the target's max Health.	https://assets.epicsevendb.com/_source/skill/sk_c1076_2.png	20	2020-05-13 17:36:22.990353	2020-05-13 17:36:22.990353
42	Saint's Prayer	A miracle of the Goddess manifests, increasing Attack of all allies for 3 turns, before increasing the caster's Combat Readiness by 50%.	https://assets.epicsevendb.com/_source/skill/sk_c1076_3.png	20	2020-05-13 17:36:22.992256	2020-05-13 17:36:22.992256
43	I Used This to Catch Fish	Attacks all enemies with the power of magic, with a 25% chance each to stun for 1 turn. Damage dealt increases on debuffed enemies.	https://assets.epicsevendb.com/_source/skill/sk_c1094_1.png	21	2020-05-13 17:36:23.148638	2020-05-13 17:36:23.148638
44	Gamma Ray	Attacks all enemies with a powerful ray, extending the duration of debuffs by 1 turn, except for those which prevent the enemy from moving.	https://assets.epicsevendb.com/_source/skill/sk_c1094_2.png	21	2020-05-13 17:36:23.151536	2020-05-13 17:36:23.151536
45	Emotional Gamma Ray	Unleashes a giant explosion to attack all enemies. The attack misses, but inflicts decreased Speed, Attack, and Hit Chance for 2 turns regardless. 	https://assets.epicsevendb.com/_source/skill/sk_c1094_3.png	21	2020-05-13 17:36:23.15415	2020-05-13 17:36:23.15415
46	Starlight's Will	Attacks with the power of the stars, dispelling one debuff each from two allies.	https://assets.epicsevendb.com/_source/skill/sk_c1091_1.png	22	2020-05-13 17:36:23.304501	2020-05-13 17:36:23.304501
48	Eternally Shining Comet	Attacks all enemies with a meteor shower, granting invincibility to all allies for 1 turn.	https://assets.epicsevendb.com/_source/skill/sk_c1091_3.png	22	2020-05-13 17:36:23.309492	2020-05-13 17:36:23.309492
50	Strong Instinct	Grants a barrier for 2 turns to the ally with the lowest Health at end of the turn. Barrier strength increases proportional to the caster's max Health.	https://assets.epicsevendb.com/_source/skill/sk_c2002_2.png	24	2020-05-13 17:36:23.457124	2020-05-13 17:36:23.457124
51	Spear of Resentment	Attacks all enemies in an explosion of spiteful emotions. Grants all allies skill nullifier, negating damage received from the next skill attack. Damage dealt increases proportional to the caster's max Health.	https://assets.epicsevendb.com/_source/skill/sk_c2002_3.png	24	2020-05-13 17:36:23.459308	2020-05-13 17:36:23.459308
53	Blood Rend	Attacks by spinning an enormous scythe and recovers the Health of all allies proportional to the damage dealt. Recovery increases by an additional 50% when the enemy is bleeding.	https://assets.epicsevendb.com/_source/skill/sk_c1039_2.png	25	2020-05-13 17:36:23.689578	2020-05-13 17:36:23.689578
56	Oathkeeper	Resets skill cooldown of an ally except for the caster with light energy.	https://assets.epicsevendb.com/_source/skill/sk_c1024_2.png	26	2020-05-13 17:36:23.855054	2020-05-13 17:36:23.855054
57	Full Bloom	Attacks with a giant Magic Sword, dispelling all buffs, decreasing Defense, and making them unable to be buffed for 2 turns.	https://assets.epicsevendb.com/_source/skill/sk_c1024_3.png	26	2020-05-13 17:36:23.857724	2020-05-13 17:36:23.857724
60	Dimensional Explosion	Locks all enemies within subspace before triggering an explosion. Penetrates Defense by 30% when the caster is granted increased Speed. Damage dealt increases proportional to the caster’s Speed.	https://assets.epicsevendb.com/_source/skill/sk_c1073_3.png	28	2020-05-13 17:36:24.038937	2020-05-13 17:36:24.038937
62	Immortal Will	Grants immortality for 1 turn when the caster receives lethal damage and resets skill cooldown of Apocalypse.\\nCan only be activated once every {{variable}} turn(s).\\nOn the caster's turn, when buffed and using Void Slash, the skill will become an AoE attack and does not trigger Dual Attack.	https://assets.epicsevendb.com/_source/skill/sk_c1023_2.png	29	2020-05-13 17:36:24.202527	2020-05-13 17:36:24.202527
63	Apocalypse	Attacks the enemy by exploding the Archdemon's Might contained within the sword. When the enemy is defeated, extends any buffs granted to the caster by 1 turn. Deals damage proportional to the caster's lost Health.	https://assets.epicsevendb.com/_source/skill/sk_c1023_3.png	29	2020-05-13 17:36:24.204904	2020-05-13 17:36:24.204904
64	Knockout	Attacks with a flurry of strikes, with a 35% chance to decrease Defense for 2 turns. Burns for 2 turns when the caster is granted vigor. Damage dealt increases proportional to the caster's max Health.	https://assets.epicsevendb.com/_source/skill/sk_c1047_1.png	30	2020-05-13 17:36:24.363751	2020-05-13 17:36:24.363751
65	Celestial Kick	Kicks the enemy, increasing Speed of the caster for 2 turns, with a 75% chance to decrease Defense of the target for 2 turns. Gains 40 Fighting Spirit when an enemy is defeated. When the caster is granted vigor, chance of decreasing Defense becomes 100%, ignoring Effect Resistance. Damage dealt increases proportional to the caster's max Health.	https://assets.epicsevendb.com/_source/skill/sk_c1047_2.png	30	2020-05-13 17:36:24.367331	2020-05-13 17:36:24.367331
66	Phoenix Flurry	Delivers a powerful blow after a flurry of strikes, stunning for 1 turn, before granting vigor to the caster for 4 turns and gaining 15 Fighting Spirit. Damage dealt increases proportional to the caster's max Health. Caster begins the first battle with 50 Fighting Spirit, and gains 5 Fighting Spirit when attacked.	https://assets.epicsevendb.com/_source/skill/sk_c1047_3.png	30	2020-05-13 17:36:24.370311	2020-05-13 17:36:24.370311
67	Full Moon Scythe	Attacks with a scythe. Damage dealt increases by 70% when the target is buffed.	https://assets.epicsevendb.com/_source/skill/sk_c2006_1.png	31	2020-05-13 17:36:24.582413	2020-05-13 17:36:24.582413
68	Dark Scar	Attacks all enemies with a scythe. Penetrates Defense by 60% when caster is stealthed.	https://assets.epicsevendb.com/_source/skill/sk_c2006_2.png	31	2020-05-13 17:36:24.585293	2020-05-13 17:36:24.585293
69	Nocturne	Leaps towards the enemy to attack, becoming stealthed for 2 turns. A critical hit will also grant a barrier to the caster for 2 turns, and barrier strength increases proportional to the caster's Attack. Damage dealt increases proportional to the caster's current Health.	https://assets.epicsevendb.com/_source/skill/sk_c2006_3.png	31	2020-05-13 17:36:24.587517	2020-05-13 17:36:24.587517
70	Wild Rose	Attacks with a sword, decreasing Combat Readiness by 10%.	https://assets.epicsevendb.com/_source/skill/sk_c1046_1.png	33	2020-05-13 17:36:24.731299	2020-05-13 17:36:24.731299
72	Public Execution	Attacks the enemy with a whip sword, decreasing buff durations by 1 turn, before decreasing Combat Readiness by 100% and decreasing Speed for 2 turns. Grants the caster skill nullifier once, negating damage received from the next skill attack.	https://assets.epicsevendb.com/_source/skill/sk_c1046_3.png	33	2020-05-13 17:36:24.736553	2020-05-13 17:36:24.736553
73	Follow Me! Charge!	Takes the lead and attacks, triggering a Dual Attack from a random ally. Damage dealt increases proportional to the caster's max Health.	https://assets.epicsevendb.com/_source/skill/sk_c1089_1.png	34	2020-05-13 17:36:29.299804	2020-05-13 17:36:29.299804
75	Ready, Load, Fire!	Commands the Perland Army to fire on all enemies, decreasing Combat Readiness by 25% and inflicting damage according to the Attack of the Hero with the highest Attack. Increases the caster's Combat Readiness by 50%.  	https://assets.epicsevendb.com/_source/skill/sk_c1089_3.png	34	2020-05-13 17:36:29.305461	2020-05-13 17:36:29.305461
78	Soul Cutter	Slashes the enemy with Cho & Mal, inflicting extinction when the enemy is defeated. Grants the caster skill nullifier, negating damage received from the next skill attack.	https://assets.epicsevendb.com/_source/skill/sk_c1095_3.png	35	2020-05-13 17:36:29.510931	2020-05-13 17:36:29.510931
133	Thorn	Attacks with a sword, with a 60% chance to decrease Hit Chance for 1 turn. 	https://assets.epicsevendb.com/_source/skill/sk_c2046_1.png	23	2020-05-13 17:36:32.475252	2020-05-13 17:36:32.475252
81	Call of the Full Moon	Attacks all enemies with Nocturne magic, penetrating Defense by 20%. When the caster is invincible, penetrates Defense by an additional 10%. A critical hit will grant the caster a barrier for 2 turns, with strength increasing proportional to the caster's Attack.	https://assets.epicsevendb.com/_source/skill/sk_c1069_3.png	37	2020-05-13 17:36:29.663189	2020-05-13 17:36:29.663189
82	Wild Wave	Attacks with intense elemental force, with a 50% chance to decrease Defense for 2 turns. Damage dealt increases proportional to the amount of the enemy's lost Health.	https://assets.epicsevendb.com/_source/skill/sk_c1082_1.png	38	2020-05-13 17:36:29.81968	2020-05-13 17:36:29.81968
83	Rekos's Blessing	With the blessing of the stars, grants increased Defense and barrier to all allies for 2 turns. Barrier strength increases proportional to the caster's Attack.	https://assets.epicsevendb.com/_source/skill/sk_c1082_2.png	38	2020-05-13 17:36:29.823517	2020-05-13 17:36:29.823517
85	Infinity Slash	Stabs the target a random number of times. Skill cooldown decreases by 1-3 turns and damage dealt increases according to the number of attacks.	https://assets.epicsevendb.com/_source/skill/sk_c1066_1.png	39	2020-05-13 17:36:30.005251	2020-05-13 17:36:30.005251
89	Dragon Flame	Has a 30% chance to counterattack when attacked, with a 100% chance to counterattack with Dragon Flame after suffering a critical hit.\\nDragon Flame: Causes critical hit, and deals damage proportional to the caster's lost Health.	https://assets.epicsevendb.com/_source/skill/pa_c2047_2.png	41	2020-05-13 17:36:30.175743	2020-05-13 17:36:30.175743
92	Manifestation	Attacks by unleashing their inner rage, granting immortality to the caster for 1 turn. Skill cooldown is reset when the enemy is defeated.	https://assets.epicsevendb.com/_source/skill/sk_c1096_2.png	42	2020-05-13 17:36:30.309748	2020-05-13 17:36:30.309748
93	Blood Bloom	Dispels all buffs from the enemy before attacking by releasing their pent-up aggression, cursing 2 turns. This skill is unaffected by elemental disadvantage. Elite or Boss monsters cannot be cursed.	https://assets.epicsevendb.com/_source/skill/sk_c1096_3.png	42	2020-05-13 17:36:30.312268	2020-05-13 17:36:30.312268
95	Storm Bullet	Fires a strong blast of wind at all enemies. Damage dealt increases proportional to the caster's Speed. This skill cannot trigger a counterattack.	https://assets.epicsevendb.com/_source/skill/sk_c1080_2.png	43	2020-05-13 17:36:30.460261	2020-05-13 17:36:30.460261
96	Destructive Pursuit	Swiftly cuts and shoots the enemy. When the enemy is not an Elite or Boss monster, damage sharing effects are ignored. Damage dealt increases proportional to the caster's Speed.	https://assets.epicsevendb.com/_source/skill/sk_c1080_3.png	43	2020-05-13 17:36:30.462468	2020-05-13 17:36:30.462468
97	Soul Purification	Attacks the enemy with a noble power, granting a barrier to the ally with the lowest Health for 2 turns. Barrier strength increases proportional to the caster's max Health.	https://assets.epicsevendb.com/_source/skill/sk_c1102_1.png	45	2020-05-13 17:36:30.605438	2020-05-13 17:36:30.605438
98	Vigilant Eye	Recovers Health of all allies when an ally is attacked by an extra attack, counterattack, or Dual Attack, and increases Combat Readiness of all allies by 5% each per attacked ally. Amount recovered is proportional to the caster's max Health and the number of attacked allies.	https://assets.epicsevendb.com/_source/skill/sk_c1102_2.png	45	2020-05-13 17:36:30.608157	2020-05-13 17:36:30.608157
99	Noble Rekos	With the grace of Rekos, grants revive to all allies for 2 turns.	https://assets.epicsevendb.com/_source/skill/sk_c1102_3.png	45	2020-05-13 17:36:30.610097	2020-05-13 17:36:30.610097
100	Key to an Oath	Attacks the enemy with a staff and heals the ally with the lowest Health. Damage dealt increases proportional to the caster's max Health, and Healing increases proportional to the ally's max Health.	https://assets.epicsevendb.com/_source/skill/sk_c1022_1.png	46	2020-05-13 17:36:30.735798	2020-05-13 17:36:30.735798
101	Light Pillar	Summons a light pillar, dispelling all debuffs, recovering Health, and granting a barrier for 2 turns. Amount recovered and barrier strength increases proportional to the caster's max Health.	https://assets.epicsevendb.com/_source/skill/sk_c1022_2.png	46	2020-05-13 17:36:30.73863	2020-05-13 17:36:30.73863
102	Light Ascending	Revives one dead ally with healing magic, recovering 50% of their Health and granting them invincibility for 1 turn. Living allies will receive the same effect after having all debuffs dispelled.	https://assets.epicsevendb.com/_source/skill/sk_c1022_3.png	46	2020-05-13 17:36:30.740785	2020-05-13 17:36:30.740785
105	Eye of Death	Attacks with an evil eye. Damage dealt increases proportional to the amount of the caster's lost Health.	https://assets.epicsevendb.com/_source/skill/sk_c2015_3.png	47	2020-05-13 17:36:30.873307	2020-05-13 17:36:30.873307
106	Dark Shadow	Penetrates the enemy with dark energy, with a 80% chance to make them unhealable for 1 turn. Damage dealt increases proportional to the amount of the enemy's lost Health.	https://assets.epicsevendb.com/_source/skill/sk_c1038_1.png	49	2020-05-13 17:36:31.006132	2020-05-13 17:36:31.006132
107	Encroach	When the enemy's Health is less than 50% after attacking with Dark Shadow, an extra attack is granted against all enemies with a 50% chance to make them unhealable for 1 turn. Can only activate once per turn.	https://assets.epicsevendb.com/_source/skill/pa_c1038_2.png	49	2020-05-13 17:36:31.008759	2020-05-13 17:36:31.008759
108	Conviction	Inflicts lethal damage to the enemy, dealing damage proportional to the enemy's lost Health. When the enemy dies, inflicts additional damage to all enemies proportional to the caster's Attack.	https://assets.epicsevendb.com/_source/skill/sk_c1038_3.png	49	2020-05-13 17:36:31.010907	2020-05-13 17:36:31.010907
111	Guillotine	Inflicts lethal damage to the enemy, piercing their weak point. Penetrates Defense by 30%, with an additional 5% for each debuff inflicted on the enemy. Inflicts extinction when the enemy is defeated.	https://assets.epicsevendb.com/_source/skill/sk_c1072_3.png	50	2020-05-13 17:36:31.153642	2020-05-13 17:36:31.153642
113	Flame Release	Activates Flame Release when the enemy is burned after using Flame Friction.\\nFlame Release: Attacks all enemies with mystic fire energy, increasing the caster's Combat Readiness by 20%.	https://assets.epicsevendb.com/_source/skill/pa_c2048_2.png	51	2020-05-13 17:36:31.31197	2020-05-13 17:36:31.31197
117	Genesis	Attacks all enemies with Dragon's might, dispelling all buffs. Damage dealt increases proportional to the caster's max Health.	https://assets.epicsevendb.com/_source/skill/sk_c1100_3.png	1	2020-05-13 17:36:31.463958	2020-05-13 17:36:31.463958
118	Spectral Axe	Attacks the enemy with an axe, absorbing some of the damage dealt as Health. Damage dealt increases proportional to the caster's max Health. 	https://assets.epicsevendb.com/_source/skill/sk_c2019_1.png	3	2020-05-13 17:36:31.604684	2020-05-13 17:36:31.604684
119	War God's Might	Consumes 10 Fighting Spirit to recover Health after being attacked. Starts the first battle with 50 Fighting Spirit. Amount recovered increases proportional to the caster's max Health. Increases Critical Hit Chance by 30%.	https://assets.epicsevendb.com/_source/skill/sk_c2019_2.png	3	2020-05-13 17:36:31.607276	2020-05-13 17:36:31.607276
120	Deliverance: Soul Exchange	Delivers divine judgment down upon the enemy. When an enemy is defeated, revives one random dead ally with 5% Health before granting skill nullifier once. Damage dealt increases proportional to the caster's max Health.	https://assets.epicsevendb.com/_source/skill/sk_c2019_3.png	3	2020-05-13 17:36:31.609596	2020-05-13 17:36:31.609596
124	Blood Scythe	Attacks by swinging a scythe, dispelling one buff.	https://assets.epicsevendb.com/_source/skill/sk_c2039_1.png	10	2020-05-13 17:36:31.925665	2020-05-13 17:36:31.925665
125	Grudge	When an enemy is revived, grants all allies a barrier and immunity for 1 turn and resets the cooldown of Moon Slash. Barrier strength increases proportional to the caster's max Health.	https://assets.epicsevendb.com/_source/skill/sk_c2039_2.png	10	2020-05-13 17:36:31.928635	2020-05-13 17:36:31.928635
126	Moon Slash	Attacks with a scythe, recovering Health of all allies. Penetrates Defense, but cannot trigger a critical hit. Damage dealt and amount recovered increase proportional to the caster's max Health. Decreases damage suffered by allies by 10% when this skill is available. When more than one damage reduction effect is granted, only the strongest effect is applied.	https://assets.epicsevendb.com/_source/skill/sk_c2039_3.png	10	2020-05-13 17:36:31.930599	2020-05-13 17:36:31.930599
129	Faithful Strike	Attacks all enemies with a swordstorm, increasing Attack of all allies for 2 turns. When there are three or fewer enemies, damage dealt increases as enemies become fewer.	https://assets.epicsevendb.com/_source/skill/sk_c1027_3.png	14	2020-05-13 17:36:32.101653	2020-05-13 17:36:32.101653
131	Everlasting Oasis	Heals all allies after using Desert Wind. Amount recovered increases proportional to the targets' max Health and the caster's Attack.	https://assets.epicsevendb.com/_source/skill/sk_c2053_2.png	18	2020-05-13 17:36:32.315315	2020-05-13 17:36:32.315315
135	Hysteria	Attacks the enemy indiscriminately, increasing skill cooldown to max. A critical hit grants all allies skill nullifier once, negating damage received from the next skill attack.	https://assets.epicsevendb.com/_source/skill/sk_c2046_3.png	23	2020-05-13 17:36:32.480977	2020-05-13 17:36:32.480977
137	End of Evil	Attacks all enemies with a scythe, with a 75% chance to dispel a buff from each enemy. Damage dealt increases with more enemies.	https://assets.epicsevendb.com/_source/skill/sk_c1006_2.png	27	2020-05-13 17:36:32.615559	2020-05-13 17:36:32.615559
141	Summon Ziegfried	Summons the Guardian Ziegfried to attack, dealing damage proportional to the caster's lost Health, penetrating Defense. This attack cannot trigger a critical hit.	https://assets.epicsevendb.com/_source/skill/sk_c1070_3.png	32	2020-05-13 17:36:32.755145	2020-05-13 17:36:32.755145
142	Judgment	Attacks with a giant sword before granting the caster immunity for 1 turn.	https://assets.epicsevendb.com/_source/skill/sk_c2009_1.png	36	2020-05-13 17:36:32.894691	2020-05-13 17:36:32.894691
144	The Will of La Mare	Smashes the enemy with a sword and attacks. Penetrates Defense by 50%. Deals increased damage against Dark elemental enemies. 	https://assets.epicsevendb.com/_source/skill/sk_c2009_3.png	36	2020-05-13 17:36:32.899796	2020-05-13 17:36:32.899796
146	Maid's Cheer	Recovers the Health of the caster and the ally with the lowest Health at the beginning of the caster's turn. Amount recovered increases proportional to the caster's max Health.	https://assets.epicsevendb.com/_source/skill/sk_c2049_2.png	40	2020-05-13 17:36:33.036994	2020-05-13 17:36:33.036994
147	VIP Treatment	Entertains all allies with VIP Treatment, reviving all dead allies to 20% Health, and granting revive for 3 turns to all living allies.	https://assets.epicsevendb.com/_source/skill/sk_c2049_3.png	40	2020-05-13 17:36:33.038934	2020-05-13 17:36:33.038934
148	Slaughter	Attacks with a double-edged axe and absorbs some of the damage as Health.	https://assets.epicsevendb.com/_source/skill/sk_c1019_1.png	44	2020-05-13 17:36:33.182693	2020-05-13 17:36:33.182693
150	Devil Drive	Brutally attacks all enemies, with a 75% chance to stun for 1 turn.	https://assets.epicsevendb.com/_source/skill/sk_c1019_3.png	44	2020-05-13 17:36:33.188437	2020-05-13 17:36:33.188437
152	I'm with My Friends	Shares 30% of damage suffered by the caster with the foremost ally. When more than one damage sharing effect is granted, only the strongest effect is applied. The caster gains 1 Focus when an ally is attacked. When an ally is attacked and the caster's stacked Focus is 5, loses all Focus and activates You're Not Cute.\\nYou're Not Cute: Attacks all enemies with a fan, with a 50% chance to decrease Defense for 2 turns.	https://assets.epicsevendb.com/_source/skill/sk_c5071_2.png	48	2020-05-13 17:36:33.500734	2020-05-13 17:36:33.500734
154	Gunflame	Attacks an enemy with pillars of fire. Damage dealt increases when the enemy isn't buffed. Gains 20 Fighting Spirit when a Critical Hit is made.	https://assets.epicsevendb.com/_source/skill/sk_c1092_1.png	52	2020-05-13 17:36:33.647037	2020-05-13 17:36:33.647037
155	Volcanic Viper	Counterattacks and silences for 2 turns when an enemy uses a non-attack skill or when the caster is attacked by an Elite or Boss monster. Damage dealt increases proportional to the enemy's max Health. Can only activate once every 2 turns.\\nRoman Cancel: When the caster's Fighting Spirit is 100 at the end of an ally's turn, the caster consumes all Fighting Spirit and extends the duration of buffs granted to the caster before being granted an extra turn.	https://assets.epicsevendb.com/_source/skill/pa_c1092_2.png	52	2020-05-13 17:36:33.650765	2020-05-13 17:36:33.650765
156	Tyrant Rave ver. Beta	Attacks with a strong punch, dispelling all buffs. Damage dealt increases proportional to the enemy's max Health.	https://assets.epicsevendb.com/_source/skill/sk_c1092_3.png	52	2020-05-13 17:36:33.6535	2020-05-13 17:36:33.6535
157	Dreamy Iron Mace	Attacks with an iron mace, with a 50% chance to stun for 1 turn.	https://assets.epicsevendb.com/_source/skill/sk_c2038_1.png	53	2020-05-13 17:36:33.783734	2020-05-13 17:36:33.783734
158	Evil Claws	Attacks all enemies with evil claws, with a 45% chance to stun for 1 turn.	https://assets.epicsevendb.com/_source/skill/sk_c2038_2.png	53	2020-05-13 17:36:33.786273	2020-05-13 17:36:33.786273
159	Light Storm	Attacks with a light storm, inflicting extinction and resetting cooldown for this skill when the enemy is defeated. Penetrates Defense by 30%, or by 100% when the enemy is stunned.	https://assets.epicsevendb.com/_source/skill/sk_c2038_3.png	53	2020-05-13 17:36:33.788398	2020-05-13 17:36:33.788398
162	Endless Nightmare	Attacks with a nightmare crystal, stunning for 1 turn. Decreases the Combat Readiness of all remaining enemies by 50% when an enemy dies.	https://assets.epicsevendb.com/_source/skill/sk_c2050_3.png	54	2020-05-13 17:36:33.933814	2020-05-13 17:36:33.933814
163	Serene Tune	(Tamarinne) Attacks an enemy with a serene melody and heals the ally with the lowest Health. Amount recovered increases proportional to the ally's max Health. Decreases cooldown of Shining Star☆ by 1 turn.\\n(Idol) Attacks all enemies with a beautiful voice, dispelling all buffs. Triggers a Dual Attack from the ally with the highest Attack.	https://assets.epicsevendb.com/_source/skill/sk_c1067_1.png	56	2020-05-13 17:36:34.062429	2020-05-13 17:36:34.062429
165	Shining Star☆	Before performing, dispels all debuffs inflicted on all allies and recovers the caster to max Health. The caster becomes an idol for 3 turns and performs a concert. Begins the first battle with full cooldown count.	https://assets.epicsevendb.com/_source/skill/sk_c1067_3.png	56	2020-05-13 17:36:34.067484	2020-05-13 17:36:34.067484
172	Sweep	Rapidly attacks two enemies with a swordstorm. Damage dealt increases proportional to the caster's Speed.	https://assets.epicsevendb.com/_source/skill/sk_c1007_1.png	59	2020-05-13 17:36:34.613254	2020-05-13 17:36:34.613254
173	Dancing Blade	Increases Attack of the caster for 2 turns and attacks all enemies one more time when an enemy is defeated by Sweep or Blade Ascent.	https://assets.epicsevendb.com/_source/skill/pa_c1007_2.png	59	2020-05-13 17:36:34.615806	2020-05-13 17:36:34.615806
174	Blade Ascent	Attacks all enemies with a swordstorm, dealing damage proportional to the caster's Speed.	https://assets.epicsevendb.com/_source/skill/sk_c1007_3.png	59	2020-05-13 17:36:34.617798	2020-05-13 17:36:34.617798
176	Duel Accepted	Prepares for a duel by dispelling two debuffs, recovering Health by 15%, and granting an extra turn. When this skill is on cooldown, Evasion increases by 35%. After successfully evading, counterattacks with Graceful Cut and gains 1 Focus.	https://assets.epicsevendb.com/_source/skill/sk_c1074_2.png	60	2020-05-13 17:36:34.765218	2020-05-13 17:36:34.765218
177	Butterfly Cut	Pierces the enemy with a sword, and consumes all Focus. Damage dealt increases proportional to the amount of Focus consumed.	https://assets.epicsevendb.com/_source/skill/sk_c1074_3.png	60	2020-05-13 17:36:34.767529	2020-05-13 17:36:34.767529
179	Thunder God's Cry	Attacks all enemies with a thunderstorm. Activates Thunder God's Cry again when an enemy is defeated. Each subsequent Thunder God's Cry activated this way deals decreased damage, and can be activated up to 3 times.	https://assets.epicsevendb.com/_source/skill/sk_c1088_2.png	61	2020-05-13 17:36:35.106483	2020-05-13 17:36:35.106483
180	Mana Amplification	Fully amplifies mana, granting immunity to all allies for 3 turns before granting increased Attack (Greater) to the caster for 3 turns while increasing Attack of all allies except for the caster for 3 turns.	https://assets.epicsevendb.com/_source/skill/sk_c1088_3.png	61	2020-05-13 17:36:35.108697	2020-05-13 17:36:35.108697
183	Dragon Charge	Hits the enemy with a finishing blow, dispelling all buffs and stunning for 1 turn.	https://assets.epicsevendb.com/_source/skill/sk_c1016_3.png	62	2020-05-13 17:36:35.260055	2020-05-13 17:36:35.260055
184	Homing Laser	Attacks all enemies with a drone, increasing Combat Readiness of the caster by 6% per target and all other allies by 2% per target. Damage dealt increases proportional to the caster's Speed. When there are three or fewer enemies, damage dealt increases with fewer enemies.	https://assets.epicsevendb.com/_source/skill/sk_c1030_1.png	63	2020-05-13 17:36:35.584919	2020-05-13 17:36:35.584919
185	Upgrade	Buffs all allies with a drone and increases Attack for 2 turns.	https://assets.epicsevendb.com/_source/skill/sk_c1030_2.png	63	2020-05-13 17:36:35.587602	2020-05-13 17:36:35.587602
186	Meteor Cannon	Attacks all enemies with an enormous and powerful cannon, inflicting huge damage. A successful attack always results in a critical hit. When there are three or fewer enemies, damage dealt increases with fewer enemies.	https://assets.epicsevendb.com/_source/skill/sk_c1030_3.png	63	2020-05-13 17:36:35.589808	2020-05-13 17:36:35.589808
1	Icy Sword Storm	Attacks with a sword, with a 60% chance to  provoke for 1 turn. Removes 4 Souls from the opponent. Damage dealt increases proportional to the caster's max Health.	https://assets.epicsevendb.com/_source/skill/sk_c2042_1.png	2	2020-05-13 17:36:20.878605	2020-05-13 17:36:20.878605
2	Battle Command	Has a 75% chance to dispel one debuff from all allies when the caster is debuffed after being attacked. Can only activate once per turn.	https://assets.epicsevendb.com/_source/skill/sk_c2042_2.png	2	2020-05-13 17:36:20.88184	2020-05-13 17:36:20.88184
3	Flash	Attacks all enemies with an instant swordstorm, with a 65% chance to decrease Speed for 2 turns. Damage dealt increases proportional to the caster's max Health.	https://assets.epicsevendb.com/_source/skill/sk_c2042_3.png	2	2020-05-13 17:36:20.884579	2020-05-13 17:36:20.884579
4	Ignite	Attacks the enemy with an explosion of flames, with a 35% chance to burn for 2 turns.	https://assets.epicsevendb.com/_source/skill/sk_c1048_1.png	4	2020-05-13 17:36:21.066089	2020-05-13 17:36:21.066089
6	Fire Pillar	Attacks all enemies with a massive fire pillar, with a 80% chance to burn for 2 turns and a 30% chance to stun for 1 turn, before increasing the caster's Combat Readiness by 50%.	https://assets.epicsevendb.com/_source/skill/sk_c1048_3.png	4	2020-05-13 17:36:21.07103	2020-05-13 17:36:21.07103
7	Sweep	Rapidly attacks two enemies with a swordstorm, with a 50% chance to decrease their Combat Readiness by 10%.	https://assets.epicsevendb.com/_source/skill/sk_c2007_1.png	5	2020-05-13 17:36:21.205782	2020-05-13 17:36:21.205782
8	Dark Contract	After receiving lethal damage, caster regenerates to 70% Health, 100% Combat Readiness, full Focus, and reset cooldown for Dark Blade.	https://assets.epicsevendb.com/_source/skill/pa_c2007_2.png	5	2020-05-13 17:36:21.208726	2020-05-13 17:36:21.208726
10	Ghost Haunt	Summons an evil spirit to attack the enemy, with a 35% chance to inflict poison for 2 turns.	https://assets.epicsevendb.com/_source/skill/sk_c1015_1.png	6	2020-05-13 17:36:21.360832	2020-05-13 17:36:21.360832
12	Last Requiem	Baal & Sezan attack all enemies with Strike Magic, with a 65% chance to decrease Speed and make them unhealable for 2 turns.	https://assets.epicsevendb.com/_source/skill/sk_c1015_3.png	6	2020-05-13 17:36:21.366038	2020-05-13 17:36:21.366038
13	Sand Wind	Attacks with wind magic. When the caster is debuffed, has a 50% chance to transfer one debuff from the caster to the enemy before inflicting a random debuff for 2 turns.	https://assets.epicsevendb.com/_source/skill/sk_c1053_1.png	8	2020-05-13 17:36:21.553431	2020-05-13 17:36:21.553431
14	Hurricane	Attacks all enemies by releasing a hot sand hurricane, with a 60% chance each to decrease Hit Chance and Attack for 2 turns.	https://assets.epicsevendb.com/_source/skill/sk_c1053_2.png	8	2020-05-13 17:36:21.556297	2020-05-13 17:36:21.556297
18	Razorwind Fan	Attacks all enemies by creating a powerful gust of wind, with a 65% chance to decrease Defense for 2 turns. Effect chance increases by 20% when Razorwind Fan is triggered by Windbreak Fan.	https://assets.epicsevendb.com/_source/skill/sk_c1071_3.png	9	2020-05-13 17:36:21.741547	2020-05-13 17:36:21.741547
19	Deliverance	Attacks with a spear, with a 35% chance to decrease Defense for 2 turns. Damage dealt increases proportional to the caster's max Health.	https://assets.epicsevendb.com/_source/skill/sk_c1002_1.png	11	2020-05-13 17:36:21.898372	2020-05-13 17:36:21.898372
20	Steel Cloudburst	Attacks all enemies with a magical spear, with a 85% chance to decrease Attack for 2 turns. Effect chance increases by 50% when the caster's Health is 50% or less. Damage dealt increases proportional to the caster's max Health.	https://assets.epicsevendb.com/_source/skill/sk_c1002_2.png	11	2020-05-13 17:36:21.902715	2020-05-13 17:36:21.902715
21	Ruinous Retribution	Attacks all enemies with a spear infused with dark energy, with a 85% chance to provoke for 1 turn, before granting immunity to all allies for 2 turns and a barrier to the caster for 2 turns. Damage dealt and barrier strength increases proportional to the caster's max Health.	https://assets.epicsevendb.com/_source/skill/sk_c1002_3.png	11	2020-05-13 17:36:21.905615	2020-05-13 17:36:21.905615
22	Mystical Arrow	Summons a mystical bow to attack the enemy, before increasing the caster's Combat Readiness by 10%.	https://assets.epicsevendb.com/_source/skill/sk_c1081_1.png	12	2020-05-13 17:36:22.032811	2020-05-13 17:36:22.032811
24	Frost Storm	Attacks all enemies with a raging frost storm, decreasing buff durations by 1 turn, before a 75% chance each to decrease Speed and restrict for 2 turns.	https://assets.epicsevendb.com/_source/skill/sk_c1081_3.png	12	2020-05-13 17:36:22.03762	2020-05-13 17:36:22.03762
25	Playing with Fire	Attacks with a flaming sword, with a 55% chance to make the target unhealable for 1 turn. 	https://assets.epicsevendb.com/_source/skill/sk_c1079_1.png	13	2020-05-13 17:36:22.182169	2020-05-13 17:36:22.182169
28	Dual Swords	Attacks with dual swords, with a 35% chance to decrease Attack for 1 turn. When the caster is buffed, Dual Swords becomes an AoE attack when used on the caster's turn, and the caster's Combat Readiness is increased by 20% after attacking. This attack does not trigger a Dual Attack.	https://assets.epicsevendb.com/_source/skill/sk_c1009_1.png	15	2020-05-13 17:36:22.325621	2020-05-13 17:36:22.325621
34	Shield Bash	Attacks with a shield and absorbs some of the damage as Health, with a 50% chance to provoke for 1 turn. Damage dealt increases proportional to the caster's max Health.	https://assets.epicsevendb.com/_source/skill/sk_c2012_1.png	17	2020-05-13 17:36:22.62534	2020-05-13 17:36:22.62534
35	Ruin's Advent	When attacked, the caster has a 70% chance of their skill cooldown being decreased by 1 turn, or 2 turns in the case of a critical hit.	https://assets.epicsevendb.com/_source/skill/pa_c2012_2.png	17	2020-05-13 17:36:22.628074	2020-05-13 17:36:22.628074
40	Light of Judgment	Emits a ray of brilliant light, increasing the caster's Combat Readiness by 10%. Effect doubles when caster is buffed.	https://assets.epicsevendb.com/_source/skill/sk_c1076_1.png	20	2020-05-13 17:36:22.988061	2020-05-13 17:36:22.988061
47	Guardian's Authority	Decreases the damage received from attacks that target all enemies by 10% and activates Consecrated Ground. When this effect is granted more than once, only the strongest effect is applied. Consecrated Ground can be activated once every 2 turns.\\nConsecrated Ground: Recovers the Health of all allies. Amount recovered increases proportional to the caster's max Health.	https://assets.epicsevendb.com/_source/skill/sk_c1091_2.png	22	2020-05-13 17:36:23.307315	2020-05-13 17:36:23.307315
49	Mistake	Attacks with a spear of revenge, with a 85% chance to provoke for 1 turn. Damage dealt increases proportional to the caster's max Health.	https://assets.epicsevendb.com/_source/skill/sk_c2002_1.png	24	2020-05-13 17:36:23.454324	2020-05-13 17:36:23.454324
52	Envoy's Scythe	Attacks with an enormous scythe, with a 40% chance to inflict bleeding for 2 turns.	https://assets.epicsevendb.com/_source/skill/sk_c1039_1.png	25	2020-05-13 17:36:23.686553	2020-05-13 17:36:23.686553
54	Vampiric Seal	Attacks all enemies with Envoy's Scythe, with a 60% chance each to randomly inflict three bleeding effects among the enemies for 2 turns. When there are less than three enemies, damage dealt increases with fewer enemies.	https://assets.epicsevendb.com/_source/skill/sk_c1039_3.png	25	2020-05-13 17:36:23.691946	2020-05-13 17:36:23.691946
55	Refined Flower	Throws swords at the enemy, with a 35% chance to decrease Defense for 2 turns.	https://assets.epicsevendb.com/_source/skill/sk_c1024_1.png	26	2020-05-13 17:36:23.852073	2020-05-13 17:36:23.852073
58	Spatial Relocation	Approaches the enemy through subspace and attacks, with a 50% chance to silence for 1 turn. Damage dealt increases proportional to the caster’s Speed.	https://assets.epicsevendb.com/_source/skill/sk_c1073_1.png	28	2020-05-13 17:36:24.032898	2020-05-13 17:36:24.032898
59	Dimensional Corridor	Draws the enemy into subspace and attacks, with a 75% chance each to dispel one buff before increasing skill cooldowns by 1 turn twice. Damage dealt increases proportional to the target's Speed.	https://assets.epicsevendb.com/_source/skill/sk_c1073_2.png	28	2020-05-13 17:36:24.036142	2020-05-13 17:36:24.036142
61	Void Slash	Attacks with a sword, with a 35% chance to decrease Hit Chance for 1 turn, dealing damage proportional to the caster's lost Health.	https://assets.epicsevendb.com/_source/skill/sk_c1023_1.png	29	2020-05-13 17:36:24.199739	2020-05-13 17:36:24.199739
71	Thornbush	Attacks all enemies, with a 85% chance each to decrease Hit Chance for 1 turn, make them unhealable for 1 turn, and dispel one buff.	https://assets.epicsevendb.com/_source/skill/sk_c1046_2.png	33	2020-05-13 17:36:24.734217	2020-05-13 17:36:24.734217
74	Defensive Formation!	Deploys a divine weapon, granting a barrier to the caster for 2 turns, before a 85% chance to provoke the enemy for 2 turns.	https://assets.epicsevendb.com/_source/skill/sk_c1089_2.png	34	2020-05-13 17:36:29.303073	2020-05-13 17:36:29.303073
76	Slice-Slice	Strikes and slices the enemy, with a 35% chance to make them unable to be buffed for 2 turns.	https://assets.epicsevendb.com/_source/skill/sk_c1095_1.png	35	2020-05-13 17:36:29.505697	2020-05-13 17:36:29.505697
77	Snip-Snip	Brutally cuts the enemy, with a 35% chance each to inflict four bleeding effects for 2 turns before increasing the caster's Combat Readiness by 50%.	https://assets.epicsevendb.com/_source/skill/sk_c1095_2.png	35	2020-05-13 17:36:29.508728	2020-05-13 17:36:29.508728
79	Starlight	Attacks with magic, with a 60% chance to steal one buff. Increases caster's Combat Readiness by 15% when the caster is buffed.	https://assets.epicsevendb.com/_source/skill/sk_c1069_1.png	37	2020-05-13 17:36:29.659467	2020-05-13 17:36:29.659467
80	Moonlight Blow	Attacks with light, with a 35% chance to stun for 1 turn before granting the caster invincibility for 1 turn.	https://assets.epicsevendb.com/_source/skill/sk_c1069_2.png	37	2020-05-13 17:36:29.661566	2020-05-13 17:36:29.661566
84	Wave of Vengeance	Attacks all enemies with the power of ruin, with a 60% chance to decrease Defense for 2 turns.	https://assets.epicsevendb.com/_source/skill/sk_c1082_3.png	38	2020-05-13 17:36:29.827207	2020-05-13 17:36:29.827207
86	Dragon Knight's Will	Increases Attack and Critical Hit Chance by 20% when the caster's Health is more than 50%, or increases Defense and decreases chance of suffering a critical hit by 20% when the caster's Health is less than 50%.	https://assets.epicsevendb.com/_source/skill/sk_c1066_2.png	39	2020-05-13 17:36:30.007485	2020-05-13 17:36:30.007485
87	Ragnar Spear	Soars into the air and hits the enemy with a spear, with a 80% chance to decrease Defense for 2 turns.	https://assets.epicsevendb.com/_source/skill/sk_c1066_3.png	39	2020-05-13 17:36:30.009277	2020-05-13 17:36:30.009277
88	Knockout	Batters the enemy, with a 50% chance to decrease Attack for 1 turn.	https://assets.epicsevendb.com/_source/skill/sk_c2047_1.png	41	2020-05-13 17:36:30.173338	2020-05-13 17:36:30.173338
90	The Coming of Asura	Attacks all enemies with a powerful ground pound, with a 50% chance to decrease Defense for 2 turns.	https://assets.epicsevendb.com/_source/skill/sk_c2047_3.png	41	2020-05-13 17:36:30.177937	2020-05-13 17:36:30.177937
91	Might	Overpowers the enemy, with a 60% chance to make them unhealable for 1 turn. Damage dealt increases proportional to the caster's lost Health.	https://assets.epicsevendb.com/_source/skill/sk_c1096_1.png	42	2020-05-13 17:36:30.306962	2020-05-13 17:36:30.306962
94	Hurricane Sword	Strikes the enemy with a gun, with a 60% chance to decrease Hit Chance for 1 turn. Damage dealt increases proportional to the caster's Speed.	https://assets.epicsevendb.com/_source/skill/sk_c1080_1.png	43	2020-05-13 17:36:30.457218	2020-05-13 17:36:30.457218
103	Evil Spirit's Call	Summons an evil spirit, with a 50% chance to put an enemy to sleep for 1 turn. This skill does not trigger a Dual Attack.	https://assets.epicsevendb.com/_source/skill/sk_c2015_1.png	47	2020-05-13 17:36:30.868855	2020-05-13 17:36:30.868855
104	Cloud of Ruin	Attacks all enemies by summoning storm clouds, with a 85% chance to dispel one buff and a 65% chance to put them to sleep. When this skill is available, increases the caster's Combat Readiness by 10% at the end of the enemy's turn.	https://assets.epicsevendb.com/_source/skill/sk_c2015_2.png	47	2020-05-13 17:36:30.871287	2020-05-13 17:36:30.871287
109	Sever	Attacks with a scythe, with a 40% chance each of inflicting two bleeding effects for 2 turns.	https://assets.epicsevendb.com/_source/skill/sk_c1072_1.png	50	2020-05-13 17:36:31.147936	2020-05-13 17:36:31.147936
110	Smash	Batters the enemy with a scythe, with a 85% chance each to make them unhealable and inflict bleeding for 2 turns. When the enemy's Health is 50% or less after the attack, activates Sever as an extra attack with a 100% chance of inflicting bleeding.	https://assets.epicsevendb.com/_source/skill/sk_c1072_2.png	50	2020-05-13 17:36:31.151195	2020-05-13 17:36:31.151195
112	Flame Friction	Attacks the enemy with an explosion of flame, with a 65% chance to burn for 1 turn.	https://assets.epicsevendb.com/_source/skill/sk_c2048_1.png	51	2020-05-13 17:36:31.309182	2020-05-13 17:36:31.309182
114	Meteor Fall	Drops a giant meteor to stun all enemies for 1 turn, with a 40% chance each to inflict two burn effects for 2 turns.	https://assets.epicsevendb.com/_source/skill/sk_c2048_3.png	51	2020-05-13 17:36:31.314037	2020-05-13 17:36:31.314037
115	Eradicate	Batters the enemy, with a 60% chance to decrease Defense for 1 turn. Damage dealt increases proportional to the caster's max Health.	https://assets.epicsevendb.com/_source/skill/sk_c1100_1.png	1	2020-05-13 17:36:31.458366	2020-05-13 17:36:31.458366
116	Noble Blood	25% chance to grant Mind's Eye to the caster for 1 turn when attacked. On the caster's turn, when using Eradicate while granted Mind's Eye, activates Trample.\\nTrample: Strikes the enemy, decreasing the cooldown of Genesis by 1 turn. Damage dealt increases proportional to the caster's max Health.	https://assets.epicsevendb.com/_source/skill/sk_c1100_2.png	1	2020-05-13 17:36:31.461679	2020-05-13 17:36:31.461679
121	Tatami Gaeshi	Attacks the enemy repeatedly, with a 45% chance each to inflict two bleeding effects for 2 turns. A critical hit will reduce the caster's skill cooldowns by 1 turn.	https://assets.epicsevendb.com/_source/skill/sk_c1093_1.png	7	2020-05-13 17:36:31.754741	2020-05-13 17:36:31.754741
122	Tsurane Sanzu-watashi	Attacks the enemy with expert swordsmanship, with a 55% chance each of inflicting three bleeding effects for 2 turns. One bleeding effect ignores Effect Resistance.	https://assets.epicsevendb.com/_source/skill/sk_c1093_2.png	7	2020-05-13 17:36:31.757559	2020-05-13 17:36:31.757559
123	Garyo Tensei	Delivers a deadly blow, detonating any bleeding effects inflicted on the enemy at the end of the turn. A critical hit increases the Combat Readiness of all allies by 15%.	https://assets.epicsevendb.com/_source/skill/sk_c1093_3.png	7	2020-05-13 17:36:31.760087	2020-05-13 17:36:31.760087
127	Slash	Attacks with a giant sword, with a 50% chance to decrease Attack for 1 turn, and a 25% chance to activate Smash. Effect chance is doubled when the enemy is buffed.	https://assets.epicsevendb.com/_source/skill/sk_c1027_1.png	14	2020-05-13 17:36:32.090785	2020-05-13 17:36:32.090785
128	Smash	Attacks the enemy repeatedly with a giant sword, with a 80% chance to dispel all buffs. Damage dealt increases proportional to number of buffs granted to the caster.	https://assets.epicsevendb.com/_source/skill/sk_c1027_2.png	14	2020-05-13 17:36:32.096509	2020-05-13 17:36:32.096509
130	Desert Wind	Attacks the enemy with wind, with a 35% chance to stun for 1 turn.	https://assets.epicsevendb.com/_source/skill/sk_c2053_1.png	18	2020-05-13 17:36:32.310695	2020-05-13 17:36:32.310695
132	Bastet Roar	Bastet roars, dispelling all debuffs from all allies, before increasing their Combat Readiness by 20%. 	https://assets.epicsevendb.com/_source/skill/sk_c2053_3.png	18	2020-05-13 17:36:32.318349	2020-05-13 17:36:32.318349
134	Larkspur	Binds all enemies with a sword, with a 85% chance to dispel one buff, before increasing the caster's Combat Readiness by 25% per target. This skill cannot trigger a counterattack.	https://assets.epicsevendb.com/_source/skill/sk_c2046_2.png	23	2020-05-13 17:36:32.478244	2020-05-13 17:36:32.478244
136	Sever	Attacks with a scythe, with a 35% chance to decrease Defense for 2 turns.	https://assets.epicsevendb.com/_source/skill/sk_c1006_1.png	27	2020-05-13 17:36:32.613058	2020-05-13 17:36:32.613058
138	Wave of Light	Attacks all enemies by distorting space and time, with a 75% chance to increase skill cooldown twice by 1 turn.	https://assets.epicsevendb.com/_source/skill/sk_c1006_3.png	27	2020-05-13 17:36:32.617802	2020-05-13 17:36:32.617802
139	Swordstorm	Attacks the enemy with a swordstorm, with a 50% chance to provoke for 1 turn. Damage dealt increases proportional to the caster's max Health.	https://assets.epicsevendb.com/_source/skill/sk_c1070_1.png	32	2020-05-13 17:36:32.749556	2020-05-13 17:36:32.749556
140	Charge	Shoves the enemy with a shield, decreasing Combat Readiness by 35%, before granting increased Defense to all allies for 2 turns. Damage dealt increases proportional to the caster's max Health.	https://assets.epicsevendb.com/_source/skill/sk_c1070_2.png	32	2020-05-13 17:36:32.752844	2020-05-13 17:36:32.752844
143	A Queen's Dignity	Decreases damage suffered from a critical hit by 30%. Decreases damage suffered from a critical hit for all allies except for the caster by 10%. When more than one damage reduction effect is granted, only the strongest effect is applied. Increases Combat Readiness of the caster by 15% when the caster suffers a critical hit.	https://assets.epicsevendb.com/_source/skill/sk_c2009_2.png	36	2020-05-13 17:36:32.897551	2020-05-13 17:36:32.897551
145	Heavy Strike	Attacks with a hammer, with a 20% chance to stun for 1 turn.	https://assets.epicsevendb.com/_source/skill/sk_c2049_1.png	40	2020-05-13 17:36:33.033955	2020-05-13 17:36:33.033955
149	Demon's Blood	Increases Attack of caster when they attack or are attacked. Effect can only stack up to 5 times. When attacked, increases Combat Readiness by 8%, and 5 Fighting Spirit is acquired.	https://assets.epicsevendb.com/_source/skill/pa_c1019_2.png	44	2020-05-13 17:36:33.185718	2020-05-13 17:36:33.185718
151	Watch Out	Attacks the enemy with a fan, with a 60% chance to target the enemy for 1 turn.	https://assets.epicsevendb.com/_source/skill/sk_c5071_1.png	48	2020-05-13 17:36:33.497042	2020-05-13 17:36:33.497042
153	Haven't I Warned You?	Attacks all enemies with a spray of water, with a 85% chance to make them unable to be buffed and unhealable for 2 turns. Damage dealt increases with a critical hit.	https://assets.epicsevendb.com/_source/skill/sk_c5071_3.png	48	2020-05-13 17:36:33.503781	2020-05-13 17:36:33.503781
160	Poison Blast	Attacks with an explosion of poison energy, with a 50% chance to inflict poison for 2 turns. This skill cannot trigger a counterattack. Attacks two enemies when Endless Nightmare is in cooldown.	https://assets.epicsevendb.com/_source/skill/sk_c2050_1.png	54	2020-05-13 17:36:33.928521	2020-05-13 17:36:33.928521
161	Nightmare Illusion	When an ally capable of being attacked is still remaining, the caster cannot be selected as a target for attacks. Increases Attack and Defense of the caster by 7% every time somebody dies. Effect can only stack up to 5 times.	https://assets.epicsevendb.com/_source/skill/pa_c2050_2.png	54	2020-05-13 17:36:33.931187	2020-05-13 17:36:33.931187
164	Song of the Forest	(Tamarinne) Heals all allies with a peaceful melody. Amount recovered increases proportional to the caster's max Health. Decreases cooldown of Shining Star☆ by 1 turn.\\n(Idol) With a powerful performance, increases Attack of all allies for 2 turns and increases Combat Readiness by 30%, recovering Health. Amount recovered increases proportional to the caster's max Health.	https://assets.epicsevendb.com/_source/skill/sk_c1067_2.png	56	2020-05-13 17:36:34.065386	2020-05-13 17:36:34.065386
166	Dark Explosion	Attacks with an explosion of dark energy, with a 60% chance to put them to sleep for 1 turn. When the enemy is put to sleep, the caster's Combat Readiness increases by 50%. This skill does not trigger a Dual attack..	https://assets.epicsevendb.com/_source/skill/sk_c1050_1.png	57	2020-05-13 17:36:34.222014	2020-05-13 17:36:34.222014
167	Ominous Thunder	Summons ominous thunder to attack all enemies, decreasing Combat Readiness by 50%, before decreasing Speed for 2 turns.	https://assets.epicsevendb.com/_source/skill/sk_c1050_2.png	57	2020-05-13 17:36:34.225421	2020-05-13 17:36:34.225421
168	Nightmare	Drops Moon of Nightmare on all enemies, with a 70% chance each to decrease Defense for 2 turns and put them to sleep for 1 turn, before increasing Attack of the caster for 2 turns.	https://assets.epicsevendb.com/_source/skill/sk_c1050_3.png	57	2020-05-13 17:36:34.227689	2020-05-13 17:36:34.227689
169	Sword Storm	Attacks with a swordstorm, with a 50% chance to dispel one buff. Damage dealt increases proportional to the caster's max Health.	https://assets.epicsevendb.com/_source/skill/sk_c1042_1.png	58	2020-05-13 17:36:34.466036	2020-05-13 17:36:34.466036
170	Commanding Shout	Grants increased Attack and Critical Hit Chance to the caster and an ally for 2 turns, and increases Combat Readiness by 30%.	https://assets.epicsevendb.com/_source/skill/sk_c1042_2.png	58	2020-05-13 17:36:34.468814	2020-05-13 17:36:34.468814
171	All-Out Attack	Attacks all enemies again after a swordstorm, with a 75% chance to decrease Defense for 2 turns and increase Defense of the caster for 3 turns. Damage dealt increases proportional to the caster's max Health.	https://assets.epicsevendb.com/_source/skill/sk_c1042_3.png	58	2020-05-13 17:36:34.471131	2020-05-13 17:36:34.471131
175	Graceful Cut	Attacks with a sword, with a 65% chance to decrease Attack for 1 turn.	https://assets.epicsevendb.com/_source/skill/sk_c1074_1.png	60	2020-05-13 17:36:34.762631	2020-05-13 17:36:34.762631
178	Vitality Drain	Smashes the enemy with a rock, increasing the caster's Combat Readiness by 10%.	https://assets.epicsevendb.com/_source/skill/sk_c1088_1.png	61	2020-05-13 17:36:35.103195	2020-05-13 17:36:35.103195
181	Double Slash	Attacks by swinging their weapon, with a 35% chance to decrease Defense for 2 turns.	https://assets.epicsevendb.com/_source/skill/sk_c1016_1.png	62	2020-05-13 17:36:35.254964	2020-05-13 17:36:35.254964
182	Dragon's Roar	Attacks with a dragon howl, dispelling one buff from all enemies, with a 75% chance to silence for 1 turn, before granting increased Attack and Speed to the caster for 2 turns.	https://assets.epicsevendb.com/_source/skill/sk_c1016_2.png	62	2020-05-13 17:36:35.257661	2020-05-13 17:36:35.257661
187	Black Thorn	Attacks with thorns, with a 25% chance to stun for 1 turn. Damage dealt increases proportional to the caster's max Health.	https://assets.epicsevendb.com/_source/skill/sk_c1083_1.png	64	2020-05-13 17:36:35.722986	2020-05-13 17:36:35.722986
188	Star's Armor	Increases Defense and damage dealt by Ancient Beast by 10% and Effectiveness by 5% when the enemy uses a non-attack skill. Can stack up to 8 times.	https://assets.epicsevendb.com/_source/skill/sk_c1083_2.png	64	2020-05-13 17:36:35.725707	2020-05-13 17:36:35.725707
189	Ancient Beast	Summons an ancient beast to attack all enemies, with a 80% chance to silence for 1 turn. Damage dealt increases proportional to the caster's max Health.	https://assets.epicsevendb.com/_source/skill/sk_c1083_3.png	64	2020-05-13 17:36:35.727977	2020-05-13 17:36:35.727977
\.


--
-- Data for Name: stats; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.stats (id, attack, hp, def, speed, crit, cdmg, story, hero_id, created_at, updated_at) FROM stdin;
1	975	7054	652	106	0.15	1.5	Maternal aunt of Luna and Yufine, who believes that Dragons are the wisest and most graceful beings in the world. As she considers it inelegant to have frequent mood swings like lowly creatures do, she tends to be kind to others unless they cross a line.	1	2020-05-13 17:36:05.431753	2020-05-13 17:36:05.431753
2	894	6840	694	104	0.15	1.5	Arrogant and cruel, he sees others only as pawns to be used for his own ends. He's so skilled at managing his reputation that he's known as a reliable and loyal knight despite his true nature.	2	2020-05-13 17:36:05.59447	2020-05-13 17:36:05.59447
3	975	7054	652	106	0.15	1.5	Originally born in a small village, she was chosen to become an incarnation of the god of war, before accidentally falling into another dimension while fighting an enemy general. She has no memories of her life before she was deified.	3	2020-05-13 17:36:05.767807	2020-05-13 17:36:05.767807
4	1197	4572	683	106	0.15	1.5	Aramintha is a gentle and cheerful woman, and leader of the Phantom CIC, a group dedicated to investigating the Unknown to whom she lost her husband. She is an incredible fighter, but often gets caught up bragging about her husband when she's not in a battle.	4	2020-05-13 17:36:05.937195	2020-05-13 17:36:05.937195
5	1283	5138	522	116	0.15	1.5	Once among the greatest of believers in the Goddess and her Covenant, Arbiter Vildred joined hands with the Acolyte Kayron and betrayed everyone and everything he once believed in. Within his body is contained the power of the Archdemon Anghraf.	5	2020-05-13 17:36:06.120758	2020-05-13 17:36:06.120758
6	1197	4572	683	106	0.15	1.5	Sezan was once a dark magician, until her body was destroyed in a forbidden summoning ceremony gone awry. Before her soul also perished, her apprentice Baal placed it inside a doll, and together they have embarked on a long journey to return her soul to a Human body.	6	2020-05-13 17:36:06.293228	2020-05-13 17:36:06.293228
7	1228	6266	473	113	0.15	1.5	She lost her family and friends in a Gear attack led by That Man. From that point on she walked the path of Asura, obsessed with exacting revenge on That Man. Tough and decisive, she boasts fighting power that can rival even that of a Gear.	7	2020-05-13 17:36:06.46971	2020-05-13 17:36:06.46971
8	1316	4777	715	108	0.15	1.5	Leader of one of the six biggest merchant guilds in Savara, Basar is a seller of poisons and explosives. A genius of business, at a young age he has gained enough power to compare with the great Afih Merchant Guild.	8	2020-05-13 17:36:06.644703	2020-05-13 17:36:06.644703
9	1003	5704	585	115	0.15	1.5	Daughter of a noble Ezeran family, Bellona ran away from home, refusing to be forced into an arranged marriage. After joining the Phantom CIC she appears to be much more satisfied with her new life, where she can fight as many strong enemies as she likes and hone her skills. 	9	2020-05-13 17:36:06.864543	2020-05-13 17:36:06.864543
50	1228	5784	553	109	0.15	1.5	Head of the Homunculus Unit, Sigret is a close friend of Friedrich's. She holds complicated feelings towards Mercedes, who resembles her past self.	50	2020-05-13 17:36:15.347676	2020-05-13 17:36:15.347676
10	621	5474	798	98	0.15	1.5	Sole heir of the strongest among all Vampires, he was separated from his father following an attack by a Human mob and found himself alone in a strange land. He deeply respects his father and misses him dearly.	10	2020-05-13 17:36:07.134413	2020-05-13 17:36:07.134413
11	821	6751	648	110	0.15	1.5	A brave woman known as the Storm Dragon Knight. Cecilia is Queen of Wintenberg and has a strong sense of responsibility. She has a righteous and sincere personality, but will stubbornly resist any attempts to change her mind.	11	2020-05-13 17:36:07.315882	2020-05-13 17:36:07.315882
12	970	5299	603	122	0.15	1.5	A young politician and administrator of Aakhen. She opposes her conservative father, Furious, who governs with zero-tolerance policies, and tries to solve problems with reasonable solutions as she strives to reconcile Aakhen and Perland.	12	2020-05-13 17:36:07.487742	2020-05-13 17:36:07.487742
13	1359	5542	585	105	0.15	1.5	A fiercely competitive but also horribly unlucky knight, she is very hot-headed and often gambles and loses everything. Her impulsive nature forced her parents to give all of the inheritance to her sister Carrot, who provides her an allowance to live off of.	13	2020-05-13 17:36:07.685359	2020-05-13 17:36:07.685359
14	957	6148	634	109	0.15	1.5	Although he may be rigid and loyal, he cannot help but act like an overprotective servant to Aither, and will deal with all kinds of things in order to protect him.	14	2020-05-13 17:36:07.833937	2020-05-13 17:36:07.833937
15	1134	5825	662	99	0.15	1.5	Owner of La Mare, a castle in the Solayu Dark Swamp, Charlotte is known as the Lady of the Swamp. Fiercely competitive, she has a love-hate relationship with Cecilia. Full of pride, she despises anyone who points out her insecurities.	15	2020-05-13 17:36:07.985032	2020-05-13 17:36:07.985032
16	1177	5542	553	119	0.15	1.5	A doll who is very simple and cheerful. Uninterested in trivial details, she almost forgot the fact she herself is a doll. Since she wanders around doing as she pleases, life has become a little complicated.	16	2020-05-13 17:36:08.180332	2020-05-13 17:36:08.180332
17	966	7323	657	102	0.15	1.5	Corvus was originally a soldier from Rose Apostles until something caused him to lose his faith and grow disillusioned with the world, and now he only wishes for its destruction. However, he still contains a gentle side within him.	17	2020-05-13 17:36:08.344073	2020-05-13 17:36:08.344073
18	931	4370	652	108	0.15	1.5	Prodigal son and heir of a once-famous merchant guild in Ki Ruburan, he changed greatly after going on an adventure with two of his friends. Upon his return, he took over control of his family's guild, which had since fallen to betrayals and misfortunes, and brought its fortune to new heights under its new name: the Basar Merchant Guild.	18	2020-05-13 17:36:08.502982	2020-05-13 17:36:08.502982
19	621	6034	775	89	0.15	1.5	Nicknamed "the Beast of the Western Light," Destina is a master of light and metal who has physically manifested in the image of her deeply beloved Soul Weaver, Ruele.	19	2020-05-13 17:36:08.684006	2020-05-13 17:36:08.684006
20	649	5254	694	103	0.15	1.5	Diene, Saint of Ezera, received the Goddess's divine revelation and fearlessly led the world to victory against the Archdemon, even without the Heir of the Covenant. Later, she became Ezera's queen.	20	2020-05-13 17:36:09.1739	2020-05-13 17:36:09.1739
21	1039	5299	673	115	0.15	1.5	A half-Gear who was born to a Human and a Gear. After being attacked by Humans, she held a deep distrust towards them, but after meeting various people she resolved those feelings. She loves humanity and nature and hates to fight, but will do so when necessary, making use of her wings, Necro and Undine.	21	2020-05-13 17:36:09.362357	2020-05-13 17:36:09.362357
22	649	5254	694	103	0.15	1.5	From a young age, her parents taught her the doctrine of the stars. Despite her youth, she now leads the faithful of Constella with her unwavering devotion and strong connection to the Spirits.	22	2020-05-13 17:36:09.532052	2020-05-13 17:36:09.532052
23	1182	5299	571	114	0.15	1.5	After being taken into a cult at a young age and enduring a childhood of suffering, Faithless Lidica finally managed to escape and is now on the run. Naturally, this experience has given her a skepticism towards religion and hatred of fanatics.	23	2020-05-13 17:36:09.695789	2020-05-13 17:36:09.695789
24	894	6840	694	104	0.15	1.5	Fallen Cecilia is chasing a mage who turned her family into dark magic stones, dreaming of the day she can get her revenge and join her loved ones again.	24	2020-05-13 17:36:09.919616	2020-05-13 17:36:09.919616
25	1089	5380	511	120	0.15	1.5	Trained since he was young, Haste is the optimal assassin. Part of the Sicar assassin organization, he is fearless and hates losing. He has no interest in other people, but deep down he yearns for the same close relationships they hold.	25	2020-05-13 17:36:10.119387	2020-05-13 17:36:10.119387
26	1158	6002	553	112	0.15	1.5	Second-in-Command of the Order of the Sword, Iseria is an Elf unable to return to her ancestral home of Dun Blyraia due to some reason. Known as the Knight of White Flowers, she has a calm and solemn personality.	26	2020-05-13 17:36:10.287375	2020-05-13 17:36:10.287375
27	1039	5340	617	115	0.15	1.5	An Heir of the Sixth World, Kise is leader of the Nocturnes. She fought every battle against the Archdemon alongside the Guardian Kromcruz. Though she can be sluggish and sharp-tongued, she cares greatly for her fellow Heirs.	27	2020-05-13 17:36:11.236305	2020-05-13 17:36:11.236305
28	1306	4248	652	119	0.15	1.5	An abandoned child found by magical scholars of Witchaven, Kawerik enlisted in the Enhanced Magic Division and made important contributions in the Archdemon War that Diene took part in. However, the side effects of the experiment have left him suffering from paralysis that is slowly killing him and have turned him into a cold-blooded contract killer.	28	2020-05-13 17:36:11.387929	2020-05-13 17:36:11.387929
29	1119	5340	483	129	0.15	1.5	An Acolyte, and commander of an army of undead known as the Dust Walkers. It is said that he demands your soul and loyalty in return for releasing you from your grudges.	29	2020-05-13 17:36:11.537663	2020-05-13 17:36:11.537663
30	966	7323	657	102	0.15	1.5	Born an orphan, Ken has faced many hardships in his life, but manages to maintain a bright and optimistic personality. He believes the only way to survive is through strength, and dedicates his life to training and always admires the strong.	30	2020-05-13 17:36:11.7037	2020-05-13 17:36:11.7037
31	1283	5138	522	116	0.15	1.5	Leader of the Nocturnes. Having been forced to part with her lover, she now has a tendency to obsess over anything she loves.	31	2020-05-13 17:36:11.88013	2020-05-13 17:36:11.88013
32	839	6405	752	100	0.15	1.5	One of the Knights of Taranor, Krau's outgoing and confident personality often causes people to misunderstand his intentions, but he tends to silently push ahead with what he thinks is right. He is risking everything he has to fight for the future of his homeland.	32	2020-05-13 17:36:12.037067	2020-05-13 17:36:12.037067
33	1283	4976	536	124	0.15	1.5	Expelled from the Rose Apostles, she joined the Phantom CIC to investigate the Land of Death. She wanted to defeat the Unknown and instill faith unto others. However, her rough personality still causes problems within the Phantom CIC.	33	2020-05-13 17:36:12.21154	2020-05-13 17:36:12.21154
59	1228	6266	473	113	0.15	1.5	A swordsman of the Perland Raiders, born into a noble Perland family. Though Violet may appear elegant, he behaves anything but. While incredibly skilled, he has few friends due to his excessive narcissism.	60	2020-05-13 17:36:17.02248	2020-05-13 17:36:17.02248
34	821	6751	648	110	0.15	1.5	Trained from birth to be citylord, Lilias is a descendant of the royal family of Perlutia, a kingdom that once ruled the entire continent of Cidonia. She is passionate about becoming the best leader possible for Perland and supports harmony with other cities, but behind all of that lies a deeper ambition.	34	2020-05-13 17:36:12.3439	2020-05-13 17:36:12.3439
35	1119	6266	627	109	0.15	1.5	Originally born into a tailor family on the planet Rekos, she was raised by mercenaries after losing her parents in a civil war, and became a wandering swordswoman. Until she met Straze, the Black Knight, and her life changed forever.	35	2020-05-13 17:36:12.567967	2020-05-13 17:36:12.567967
36	1119	6266	627	109	0.15	1.5	A young queen who is strong and full of kindness. She leads her people with a mature, wise demeanor. The people of Solayu previously had complaints about the Lady of La Mare, but their feelings are slowly being changed by their lady's changed behavior.	36	2020-05-13 17:36:12.728525	2020-05-13 17:36:12.728525
37	1412	4248	645	112	0.15	1.5	Ludwig is the sole survivor of the Nocturnes, the family responsible for protecting the Lunar Cemetery. He cherishes the Guardian Kromcruz more than anyone else. Though he might look young, he is well along in years.	37	2020-05-13 17:36:12.93961	2020-05-13 17:36:12.93961
38	1316	4777	715	108	0.15	1.5	An Alien girl who traveled across the universe seeking revenge against Straze for bringing ruin to her world. She's determined to make Straze pay for what he has done to her friends and restore her homeworld.	38	2020-05-13 17:36:13.112611	2020-05-13 17:36:13.112611
39	1119	6266	627	109	0.15	1.5	Luna is a half-Dragon, half-Human knight that has been loyal to Wintenberg since the time of Queen Francesca. Only a few know of the true feelings hidden behind her smile.	39	2020-05-13 17:36:13.276075	2020-05-13 17:36:13.276075
40	640	5297	680	104	0.15	1.5	"You could be the queen of our store!" -- Enticed by such a suggestion, Chloe began working in a maid café, but with no idea what kind of work a maid is expected to do, she lacks a certain care for her customers.	40	2020-05-13 17:36:13.467277	2020-05-13 17:36:13.467277
41	1359	5542	585	105	0.15	1.5	In his goal of becoming the strongest in the universe, he is hunting down and challenging every martial arts master he can find. He will cross time and space, and even dimensions, to find a worthy challenger.	41	2020-05-13 17:36:13.637732	2020-05-13 17:36:13.637732
42	1412	4248	645	112	0.15	1.5	A Vampire who dreams of revenge after losing everything. Originally the eldest daughter of a noble family, she fell in love with a Vampire she met at a ball and soon became a Vampire herself. After a long separation following an ambush, she was enraged to discover her love had betrayed her. Though he had since died, that won't stop her exacting her revenge on his son.	42	2020-05-13 17:36:13.843228	2020-05-13 17:36:13.843228
43	1283	4976	536	124	0.15	1.5	A young member of the Perland Raiders. As the son of pathfinders through ancient ruins, Pavel inherited an exceptional talent for tracking and navigation. He is incredibly loyal to Perland, the largest city in Cidonia, for providing his previously nomadic family with safety, and is frequently trusted with important missions for the Raiders.	43	2020-05-13 17:36:14.011886	2020-05-13 17:36:14.011886
44	966	7323	657	102	0.15	1.5	Ravi once was a quiet girl living in a countryside, until she fell into a victim of the Homunculus experiments and became a Wraith. Since Ravi was made by the power of Tenebria, she strongly believes she is the chosen one.	44	2020-05-13 17:36:14.204472	2020-05-13 17:36:14.204472
45	621	5474	798	98	0.15	1.5	A shaman of Rekos and Luluca's friend. Born with the Vigilant Eye, she is able to perceive the true nature of other beings. She visited Straze to confess her feelings for him, but in a tragic twist of fate, she was killed at his hand.	45	2020-05-13 17:36:14.386572	2020-05-13 17:36:14.386572
46	621	5474	798	98	0.15	1.5	An Heir of the Sixth World, Ruele is revered for her kindness. She is a Soul Weaver who gained the favor of the Lord of Light, Destina. Her only hobby is telling fortunes with rabbit fortune cookies.	46	2020-05-13 17:36:14.57239	2020-05-13 17:36:14.57239
47	1039	5299	673	115	0.15	1.5	Sage Baal fell in love with an ordinary Human named Sezan and locked her soul in a doll to preserve her for himself forever. However, as time passed her soul eroded away, and eventually, she became simply a normal doll.	47	2020-05-13 17:36:14.77425	2020-05-13 17:36:14.77425
48	1182	5299	571	114	0.15	1.5	Bellona has come to Reingar to help Karin and the Public Security Club cope with the influx of summer visitors. Although she claims she's here to watch over Sez, it seems her true goal is to relax in the resort.	48	2020-05-13 17:36:14.957368	2020-05-13 17:36:14.957368
49	1228	6266	473	113	0.15	1.5	A cynical and quiet man, Sez Gaien is a living weapon known to many as "the Berserker." After gaining power from an Acolyte to escape the Homunculus experiments, he was branded a mass murderer and has been running ever since.	49	2020-05-13 17:36:15.183935	2020-05-13 17:36:15.183935
51	1197	4572	683	106	0.15	1.5	Commander of Savara's legendary Silver Blade Company. What began as a small group of people who had nowhere else to go gradually became greater in size thanks to Aramintha's charismatic leadership.	51	2020-05-13 17:36:15.514876	2020-05-13 17:36:15.514876
52	1177	5340	553	119	0.15	1.5	A Gear-killer and bounty hunter who roams the world capturing wanted criminals. He boasts incredible fighting power, and while capable of harnessing all elements, he mainly sticks to Fire. He has a blunt and harsh way of speaking and prefers to use actions over words.	52	2020-05-13 17:36:15.664977	2020-05-13 17:36:15.664977
53	1228	6266	473	113	0.15	1.5	Researchers who barely escaped with their lives from Sez's murderous rampage built a new living weapon modeled after him. This new weapon seeks to kill Sez to prove its superiority and worth.	53	2020-05-13 17:36:15.887826	2020-05-13 17:36:15.887826
54	1197	4572	683	106	0.15	1.5	While searching for a form that she liked, Tenebria enjoyed destroying people's minds. Her greatest joy came from watching them die from the poison of her illusions.	54	2020-05-13 17:36:16.105839	2020-05-13 17:36:16.105839
55	931	4370	652	108	0.15	1.5	An idol that brings joy and cheer through her electrifying music. She has great magical talent and can harness magic with her voice. She changes her appearance on stage with the Blooming Pendant and becomes more dynamic and lively.	56	2020-05-13 17:36:16.277116	2020-05-13 17:36:16.277116
56	1359	4895	652	110	0.15	1.5	An Acolyte who freely deals out all kinds of illusions, Tenebria is known as the Phantom Queen. She bewilders her targets by overwhelming them with terrifying illusions or by taking on the appearance of others. Though she may look playful, she is monstrously cruel.	57	2020-05-13 17:36:16.47192	2020-05-13 17:36:16.47192
57	821	6751	648	110	0.15	1.5	Captain of the Royal Guard of Lefundos, a kingdom situated in Eureka, Tywin holds the favor of his king Schniel. A hard worker, he values rule and order over all else, and gives off the impression that he will not listen to what you have to say.	58	2020-05-13 17:36:16.64202	2020-05-13 17:36:16.64202
58	1283	5138	522	116	0.15	1.5	Due to his humorous style of speaking, many mistake Vildred as being light-hearted, but he has a serious side that leads him to stubbornly push ahead with what he thinks is right.	59	2020-05-13 17:36:16.836275	2020-05-13 17:36:16.836275
60	1228	4370	662	115	0.15	1.5	Granddaughter of a reclusive magical scholar, Vivian is gifted with incredible magical ability. As leader of Witchaven, she maintains a delicate balance between bickering factions of sorcerers, but the growing numbers of Unknown and machinations of political enemies have her treading on thin ice. 	61	2020-05-13 17:36:17.251278	2020-05-13 17:36:17.251278
61	1228	5784	553	109	0.15	1.5	Originally a Dragon of Wintenberg, through certain events Yufine eventually found her way to Ritania. Cheerful and curious, her excessive curiosity often leads to accidents. She loves shiny things so much that she tends to zone out while staring at them.	62	2020-05-13 17:36:17.499543	2020-05-13 17:36:17.499543
62	1158	6002	553	112	0.15	1.5	President of the Reingar Student Council and the chosen Heir by the Guardian, Kazran. Yuna is a high school girl who was summoned into this world. She is full of curiosity and obsessed with technology, constantly running experiments.	63	2020-05-13 17:36:17.668154	2020-05-13 17:36:17.668154
63	1039	5299	673	115	0.15	1.5	An emperor from another galaxy who was defeated in a tournament held by Notos. He obsessed over power and life, eventually binding his soul with that of a star and becoming transcendent. He now heads toward Orbis in search of the Monolith.	64	2020-05-13 17:36:17.850096	2020-05-13 17:36:17.850096
\.


--
-- Data for Name: suggestions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.suggestions (id, hero_id, artifact_id, created_at, updated_at) FROM stdin;
3	5	4	2020-05-15 17:01:18.994196	2020-05-15 17:01:18.994196
4	4	1	2020-05-15 17:56:29.114789	2020-05-15 17:56:29.114789
5	4	20	2020-05-15 17:58:03.786201	2020-05-15 17:58:03.786201
6	8	1	2020-05-26 16:52:45.895655	2020-05-26 16:52:45.895655
7	12	21	2020-05-26 16:53:50.758705	2020-05-26 16:53:50.758705
9	1	19	2020-05-26 16:56:30.75549	2020-05-26 16:56:30.75549
10	2	19	2020-05-26 16:56:59.495067	2020-05-26 16:56:59.495067
11	3	38	2020-05-26 17:00:53.181052	2020-05-26 17:00:53.181052
12	7	47	2020-05-26 17:02:00.428584	2020-05-26 17:02:00.428584
13	7	35	2020-05-26 17:02:22.546675	2020-05-26 17:02:22.546675
14	13	10	2020-05-26 17:09:07.637663	2020-05-26 17:09:07.637663
15	14	19	2020-05-26 17:09:38.549713	2020-05-26 17:09:38.549713
16	9	8	2020-05-26 17:09:38.549713	2020-05-26 17:09:38.549713
17	9	34	2020-05-26 17:09:38.549713	2020-05-26 17:09:38.549713
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.users (id, username, password_digest, email, created_at, updated_at, user_token, user_type) FROM stdin;
3	marsxtc	$2a$12$NvBLaUraXkjUWH5olHUvQezDPtJOgZmXClD86upo7y9qhRiroo5q2	\N	2020-05-16 18:19:22.076881	2020-05-22 14:40:27.730764	\N	user
2	meiqo	$2a$12$smfvWsYI2Nbgso91vfXgJedB7HPuqRBm9AwgF/rDs.qj8SoiSsgsO	\N	2020-05-16 18:18:57.58548	2020-05-22 14:40:27.736835	eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoibWVpcW8ifQ.xAUY3aVsPixBdDhFGJRq8e3JZzEVu0FYC20N5Ylc5eQ	user
4	MarsXTC	$2a$12$3.6d8pwk1TGDEE/Z9Zvq2epdxkMWfsNZa1MYf8cKaRLeJm20KI0SW	\N	2020-05-20 03:35:06.888461	2020-05-22 14:40:27.739231	eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoiTWFyc1hUQyJ9.UxMzd10SXsVb_eds20_6ZVqNsXWcP_wev1_rRPugE6U	user
5	Annie	$2a$12$179popkBo55PhhhUqTjUNeNM6qDTrZ.SKLUx2C6LyT6EY4CmlKcIm	\N	2020-05-20 20:47:17.270761	2020-05-22 14:40:27.741758	eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoiQW5uaWUifQ.DOcP8rxh9WIRDPjdj5s_8eA2M0vyOSi3PEfDZF1c4UY	user
1	slant	$2a$12$VlCxVUmgZJwZYflaZyfz0OYOS2ZJA.lukJJ20ff5wgSxQ/PAmfzh6	\N	2020-05-16 18:18:09.428931	2020-05-22 14:40:35.613631	eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoic2xhbnQifQ.gLt9SpFAT-QbpW6Hxc5mM6Ly65DM25NRIHNZgZkK6cM	admin
\.


--
-- Name: artifacts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.artifacts_id_seq', 52, true);


--
-- Name: auths_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auths_id_seq', 1, false);


--
-- Name: comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.comments_id_seq', 19, true);


--
-- Name: heros_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.heros_id_seq', 64, true);


--
-- Name: ownerships_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.ownerships_id_seq', 18, true);


--
-- Name: skills_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.skills_id_seq', 189, true);


--
-- Name: stats_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.stats_id_seq', 63, true);


--
-- Name: suggestions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.suggestions_id_seq', 15, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.users_id_seq', 5, true);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: artifacts artifacts_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.artifacts
    ADD CONSTRAINT artifacts_pkey PRIMARY KEY (id);


--
-- Name: auths auths_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auths
    ADD CONSTRAINT auths_pkey PRIMARY KEY (id);


--
-- Name: comments comments_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);


--
-- Name: heros heros_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.heros
    ADD CONSTRAINT heros_pkey PRIMARY KEY (id);


--
-- Name: ownerships ownerships_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ownerships
    ADD CONSTRAINT ownerships_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: skills skills_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.skills
    ADD CONSTRAINT skills_pkey PRIMARY KEY (id);


--
-- Name: stats stats_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.stats
    ADD CONSTRAINT stats_pkey PRIMARY KEY (id);


--
-- Name: suggestions suggestions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.suggestions
    ADD CONSTRAINT suggestions_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_comments_on_ownership_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_comments_on_ownership_id ON public.comments USING btree (ownership_id);


--
-- Name: index_comments_on_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_comments_on_user_id ON public.comments USING btree (user_id);


--
-- Name: index_ownerships_on_hero_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_ownerships_on_hero_id ON public.ownerships USING btree (hero_id);


--
-- Name: index_ownerships_on_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_ownerships_on_user_id ON public.ownerships USING btree (user_id);


--
-- Name: index_skills_on_hero_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_skills_on_hero_id ON public.skills USING btree (hero_id);


--
-- Name: index_stats_on_hero_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_stats_on_hero_id ON public.stats USING btree (hero_id);


--
-- Name: index_suggestions_on_artifact_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_suggestions_on_artifact_id ON public.suggestions USING btree (artifact_id);


--
-- Name: index_suggestions_on_hero_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_suggestions_on_hero_id ON public.suggestions USING btree (hero_id);


--
-- Name: comments fk_rails_03de2dc08c; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT fk_rails_03de2dc08c FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: suggestions fk_rails_44cfa7b9c9; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.suggestions
    ADD CONSTRAINT fk_rails_44cfa7b9c9 FOREIGN KEY (artifact_id) REFERENCES public.artifacts(id);


--
-- Name: skills fk_rails_4f0903678e; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.skills
    ADD CONSTRAINT fk_rails_4f0903678e FOREIGN KEY (hero_id) REFERENCES public.heros(id);


--
-- Name: ownerships fk_rails_68282d75fa; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ownerships
    ADD CONSTRAINT fk_rails_68282d75fa FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: ownerships fk_rails_7b46f01828; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ownerships
    ADD CONSTRAINT fk_rails_7b46f01828 FOREIGN KEY (hero_id) REFERENCES public.heros(id);


--
-- Name: comments fk_rails_a49e858097; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT fk_rails_a49e858097 FOREIGN KEY (ownership_id) REFERENCES public.ownerships(id);


--
-- Name: suggestions fk_rails_b1ab51131a; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.suggestions
    ADD CONSTRAINT fk_rails_b1ab51131a FOREIGN KEY (hero_id) REFERENCES public.heros(id);


--
-- Name: stats fk_rails_b2395013d7; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.stats
    ADD CONSTRAINT fk_rails_b2395013d7 FOREIGN KEY (hero_id) REFERENCES public.heros(id);


--
-- PostgreSQL database dump complete
--

