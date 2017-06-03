--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.3
-- Dumped by pg_dump version 9.6.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = public, pg_catalog;

--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: hoang
--

COPY ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2017-06-03 12:29:32.997593	2017-06-03 12:29:32.997593
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: hoang
--

COPY users (id, username, email, password_digest, created_at, updated_at) FROM stdin;
1	jessica	jessica@demo.com	$2a$10$O7nMNfQ1EeBpBxbYdEKE.Oz2WFesqg.2O5uQm5maIh3eq6mqjK1Py	2017-06-03 12:31:35.957038	2017-06-03 12:31:35.957038
\.


--
-- Data for Name: articles; Type: TABLE DATA; Schema: public; Owner: hoang
--

COPY articles (id, title, text, created_at, updated_at, user_id, image) FROM stdin;
1	Twitter Fails E.U. Standard on Removing Hate Speech Online	Twitter has failed to meet European standards for removing hate speech online, figures to be published Thursday show, as pressure mounts, particularly on the Continent, for tech companies to do more to tackle such harmful material.\r\n\r\nThe battle between European policy makers and tech companies over what should be permitted online has pitted freedom of speech campaigners against those who say hate speech — in whatever form — has no place on the internet.\r\n\r\nIn this standoff, European officials have called on Silicon Valley companies to take down at least 50 percent of the hate speech from their services once they are notified, and they signed up the likes of Twitter, Facebook and Google to a voluntary code of conduct last year to combat the rising tide of harmful content online.\r\n\r\nBut findings to be published by the European Commission, the executive arm of the European Union, show that Twitter removed hate speech from its network less than 40 percent of the time after such content had been flagged to the company.\r\n\r\nWhile the social network failed to meet the European standard, it has improved significantly from a study published late last year, which found that it removed a mere 19 percent of hate speech when notified.\r\n\r\nIt comes as pressure mounts on Twitter, whose revenue and user figures continue to stall, to clean up its act as the company has become one of the main mechanisms for internet trolls to spread their messages across the web.\r\n\r\nGoogle and Facebook, by contrast, now comply with the region’s demands to take down at least 50 percent of hate speech, upon notification, according to the study.\r\n\r\n“We embarked in this process together, determined to bring about real changes for people who suffer from hatred and violence online,” Vera Jourova, the European commissioner of justice, consumers and gender equality, said in a statement on Wednesday before the report’s publication. “The code of conduct on countering illegal hate speech online has delivered significant progress.”\r\n\r\nIn response, Twitter said it had invested in new reporting procedures to allow individuals to flag probable hate speech, and it was striving to balance people’s right to freedom of expression with the need to police material on its network.\r\n\r\n“Our work will never be ‘done,’” Karen White, Twitter’s head of public policy in Europe, said in a statement.\r\n\r\nGoogle and Facebook also said they had made it easier for organizations and individuals to report hate speech and they were continuing to invest to tackle such material across the region and elsewhere.\r\n\r\nThe European findings were based on about 2,500 potential instances of hate speech recorded by 34 nongovernmental organizations in 24 of the European Union’s 28 member states. These groups notified the tech companies of the possible abuse and recorded how the companies responded. The study was conducted over seven weeks through May 5.\r\n\r\nFifty-nine percent of the material flagged by these nongovernmental groups was removed by tech companies, according to the report. Just over 50 percent of the notifications were assessed by tech companies within the first 24 hours.\r\n\r\nWhile the Pan-European findings were greeted with praise by Ms. Jourova, policy makers in several countries have said that they will take more action against Silicon Valley companies if they do not go further in tackling hate speech online.\r\n\r\nAfter the recent terrorist attack in Manchester, England, Theresa May, the country’s prime minister, called on tech companies to strengthen their monitoring of extremist speech online. And in Germany, lawmakers are planning new legislation that could lead to fines of up to $50 million if companies do not act quickly in policing harmful material on their digital services.	2017-06-03 12:35:04.386248	2017-06-03 12:35:04.386248	1	image/upload/v1496493334/bloggrails/ylak4cfumg1vc3strasb.jpg
3	Airbnb Hosts More Likely to Reject the Disabled, a Study Finds	Hosts granted preapproval to 75 percent of travelers who made no mention of a disability, according to the study. That rate fell to 61 percent for those who said they had dwarfism, 50 percent for those with blindness, 43 percent for those with cerebral palsy and just 25 percent for those with spinal cord injuries.\r\n\r\nSome of that disparity can be explained by hosts who followed up with questions for the travelers with disabilities, the researchers said, thus preventing the request from being classified as preapproved. Requests were sent to hosts throughout the country over a nearly six-month period last year.\r\n\r\nThe researchers could not solely blame the findings on personal prejudice. They said physical inaccessibility was a major factor behind the disparity in hosts’ responses. That, they said, raised concerns that businesses like Airbnb could exclude users with disabilities even as they expand access to services over all.\r\n\r\n“Here’s the flip side of our tech revolution: Platforms like Airbnb seem to be perpetuating or increasing opportunities for exclusion, both economic and social,” said Lisa Schur, a professor in the Rutgers School of Management and Labor Relations and one of the study authors.\r\n\r\nWith more than three million listings, Airbnb has introduced new lodging options around the world, including many that meet the needs of people with disabilities. Last year, the company also instituted a nondiscrimination policy and took steps to better handle complaints of bias, including assurances that users treated unfairly will have a place to stay.\r\n\r\n“Discrimination of any kind on the Airbnb platform, including on the basis of ability, is abhorrent, a violation of our anti-discrimination policy and will result in permanent removal from our platform,” the company said in a statement. The majority of Airbnb reservations, it noted, are made by “instant booking,” which does not require preapproval.\r\n\r\nStill, like many businesses in the sharing economy, Airbnb operates in a regulatory haze, and protections imposed on other forms of lodging under the Americans with Disabilities Act may not always apply to Airbnb listings, which are often a homeowner’s primary or secondary residence.\r\n\r\n“If we’re entering an era where these new types of hotels, which are essentially private homes, can’t offer accommodations, it defeats and undoes all of the progress we’ve made with the A.D.A. as far as equal access is concerned,” said Mason Ameri, one of the authors of the Rutgers study and a postdoctoral fellow at the university’s School of Management and Labor Relations. “The law needs to catch up with services like Airbnb.”\r\n\r\nAlice Wong, a former member of the National Council on Disability and founder of the Disability Visibility Project, said that if Airbnb did not lay out and enforce strict guidelines for listings that claim to be handicapped accessible, the company was making a false promise to travelers.\r\n\r\n“Discrimination is often based on ignorance,” said Ms. Wong, who is in a wheelchair. “People with disabilities deviate from the image of a typical customer, so the way they are discriminated against is hard to pin down but very real.”	2017-06-03 12:37:10.173219	2017-06-03 12:37:10.173219	1	image/upload/v1496493459/bloggrails/kk2rhv3vi71xlmdlqbcr.jpg
4	‘Climate Change Is Real’: Many U.S. Companies Lament Paris Accord Exit	Soon after President Trump announced that the United States would back out of the Paris climate accord, several large companies based in the United States that had supported the international pact said they were disappointed by the decision and would continue their environmental efforts.\r\n\r\nAnd two chief executives who sat on Mr. Trump’s economic advisory council — Elon Musk and Robert A. Iger — said they were leaving that group because they disagreed with the exit from the Paris agreement.\r\n\r\nWhile Mr. Trump said the decision to exit the deal was made to protect American jobs — a contention that environmental groups have disputed — some large companies had urged the president to stay in the accord.\r\n\r\nTwenty-five companies, including Apple, Facebook, Google and Microsoft, bought full-page ads in The New York Times, The Wall Street Journal and The New York Post last month to argue their case. Some of those companies, and others with similar views in the technology, energy and engineering sectors, reacted quickly on Thursday.\r\n\r\nBut so did some companies, particularly in the coal industry, that supported Mr. Trump’s decision.\r\n\r\nTesla and SpaceX	2017-06-03 12:39:08.311849	2017-06-03 12:39:08.311849	1	image/upload/v1496493577/bloggrails/cd5zwzlstaj6wse1zvp7.jpg
5	‘Sense8’ Cancellation Is Netflix’s Second in a Week	Is Netflix about to set forth on a cancellation binge?\r\n\r\nA week after it axed “The Get Down,” its expensive single-season music drama, Netflix, the online streaming service, announced Thursday that it was canceling its sci-fi drama “Sense8” after two seasons.\r\n\r\nBy Netflix standards, this is a moment.\r\n\r\nThe company has been notoriously reluctant to cancel any of its original series. When the expensive but poorly reviewed “Marco Polo” got clipped in December, it qualified as a surprise to the TV industry. Netflix, to the frustration of many in Hollywood, does not release viewership figures, so it is difficult to tell what works and what doesn’t. Netflix has poured billions of dollars into original TV shows, and it has only canceled a small fraction of them.\r\n\r\nBut the company’s chief executive, Reed Hastings, recently suggested this was something they might be prone to do.\r\n\r\n“I’m always pushing the content team, We have to take more risk, you have to try more crazy things, because we should have a higher cancel rate overall,” he said Wednesday in an interview with CNBC. “Because then, what you get is you get some winners that are just unbelievable winners — like, ‘13 Reasons Why’ over the last three months has been a big hit for us.”\r\n\r\nHe added, “Well, you can tell when we cancel a show,” an indication that viewership figures were part of the streaming service’s calculus, even if those figures were not shared with anyone outside the company.\r\n\r\n“Sense8” was a globe-trotting sci-fi drama made by Lana and Lilly Wachowski, the filmmakers behind “The Matrix,” and J. Michael Straczynski, the creator of “Babylon 5.” It received generally positive reviews from critics.\r\n\r\n“After 23 episodes, 16 cities and 13 countries, the story of the Sense8 cluster is coming to an end,” said Cindy Holland, the vice president for original content at Netflix.\r\n\r\nShe added, “Never has there been a more truly global show with an equally diverse and international cast and crew, which is only mirrored by the connected community of deeply passionate fans all around the world.”	2017-06-03 12:42:00.864159	2017-06-03 12:42:00.864159	1	image/upload/v1496493750/bloggrails/ed2sg1jedbbkt3zcnexa.jpg
\.


--
-- Name: articles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hoang
--

SELECT pg_catalog.setval('articles_id_seq', 5, true);


--
-- Data for Name: comments; Type: TABLE DATA; Schema: public; Owner: hoang
--

COPY comments (id, text, user_id, article_id, created_at, updated_at) FROM stdin;
\.


--
-- Name: comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hoang
--

SELECT pg_catalog.setval('comments_id_seq', 1, false);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: hoang
--

COPY schema_migrations (version) FROM stdin;
20170603051016
20170522064808
20170524035432
20170530052956
20170530054536
20170602124449
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: public; Owner: hoang
--

COPY sessions (id, session_token, user_id, created_at, updated_at) FROM stdin;
1	3auJYR7t77yTeG7DDNwFEAFAhPe7NLDkttGQ_a3LIjCh1N4UrRjJVPe-xMnl1TWNF7aUmri1vSl3kFBSjvaRxQ	1	2017-06-03 12:31:48.067239	2017-06-03 12:31:48.067239
\.


--
-- Name: sessions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hoang
--

SELECT pg_catalog.setval('sessions_id_seq', 1, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hoang
--

SELECT pg_catalog.setval('users_id_seq', 1, true);


--
-- PostgreSQL database dump complete
--

