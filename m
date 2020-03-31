Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 26893199894
	for <lists+tipc-discussion@lfdr.de>; Tue, 31 Mar 2020 16:31:35 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jJHvP-00006d-6m; Tue, 31 Mar 2020 14:31:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1jJHvN-00006M-Qs
 for tipc-discussion@lists.sourceforge.net; Tue, 31 Mar 2020 14:31:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vyxD8Y7pllEFfltVb+XuFy05faiNi0ZNi1HA1dRkvyQ=; b=Grpf9QvxwTJCOHm8xhY8mgmtSl
 VAHHQ/adyt+hNKehrgDRe9mwFIlOj7rJp8qQlQUOxIy05o921KgfgFGNoZ5FHg/ITwv6F87muZRP3
 58B54mXq8BFPLbMKFr5LMEiLv06Mv2gIhJUUOaAcB8kJC4xSL+Yvz38g8DR8lGe5sBRA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vyxD8Y7pllEFfltVb+XuFy05faiNi0ZNi1HA1dRkvyQ=; b=mWoypzRpFCLJJ/q8d0V1OqFMuH
 TNxoIxRZ0eInkY47e42jK+HKhlRCvTmnTLZW0MDowYMEoH4MruWH5fRTsBh40mMFVnluCj5SxSOeP
 5byBjfnVR8hDL4KNn+EUIx92gvVnM9ai2Rwm4UCTlP8L4q1/IAmzlQ471ZGOZG/0qOcY=;
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jJHvK-00GrZg-I6
 for tipc-discussion@lists.sourceforge.net; Tue, 31 Mar 2020 14:31:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1585665079;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=vyxD8Y7pllEFfltVb+XuFy05faiNi0ZNi1HA1dRkvyQ=;
 b=VBEYIU8ipJcnMijXmdqlSFJWTN9xI61MYhFJtIPCsunasroCBnhnGQvRv1uctIA/Z4x7XE
 z9XMes5jYSsZKzKrh6Byq3C+2r7jy4rRF0ulfbOW9/nHBlO19ziep7y0LpE99MdLgOrBzk
 USaUQ+luJm+qwCtBAfSZ472bsOUWLI8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-470-jKzpCURkPuSokRyuYTCDvg-1; Tue, 31 Mar 2020 10:31:17 -0400
X-MC-Unique: jKzpCURkPuSokRyuYTCDvg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B6873107ACCA;
 Tue, 31 Mar 2020 14:31:16 +0000 (UTC)
Received: from [10.10.112.77] (ovpn-112-77.rdu2.redhat.com [10.10.112.77])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B4DDC19C58;
 Tue, 31 Mar 2020 14:31:12 +0000 (UTC)
To: Tuong Lien <tuong.t.lien@dektech.com.au>, maloy@donjonn.com,
 ying.xue@windriver.com, tipc-discussion@lists.sourceforge.net
References: <20200331085443.20761-1-tuong.t.lien@dektech.com.au>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <90e46021-2c3a-d5c8-9456-f414d5cebdf3@redhat.com>
Date: Tue, 31 Mar 2020 10:31:12 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200331085443.20761-1-tuong.t.lien@dektech.com.au>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1jJHvK-00GrZg-I6
Subject: Re: [tipc-discussion] [iproute2-next] tipc: enable printing of
 broadcast rcv link stats
X-BeenThere: tipc-discussion@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <tipc-discussion.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/tipc-discussion>, 
 <mailto:tipc-discussion-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=tipc-discussion>
List-Post: <mailto:tipc-discussion@lists.sourceforge.net>
List-Help: <mailto:tipc-discussion-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/tipc-discussion>, 
 <mailto:tipc-discussion-request@lists.sourceforge.net?subject=subscribe>
Cc: tipc-dek@dektech.com.au
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net



On 3/31/20 4:54 AM, Tuong Lien wrote:
> This commit allows printing the statistics of a broadcast-receiver link
> using the same tipc command, but with additional 'link' options:
>
> $ tipc link stat show --help
> Usage: tipc link stat show [ link { LINK | SUBSTRING | all } ]
>
> With:
> + 'LINK'      : print the stats of the specific link 'LINK';
> + 'SUBSTRING' : print the stats of all the links having the 'SUBSTRING'
>                  in name;
> + 'all'       : print all the links' stats incl. the broadcast-receiver
>                  ones;
>
> Also, a link stats can be reset in the usual way by specifying the link
> name in command.
>
> For example:
>
> $ tipc l st sh l br
> Link <broadcast-link>
>    Window:50 packets
>    RX packets:0 fragments:0/0 bundles:0/0
>    TX packets:5011125 fragments:4968774/149643 bundles:38402/307061
>    RX naks:781484 defs:0 dups:0
>    TX naks:0 acks:0 retrans:330259
>    Congestion link:50657  Send queue max:0 avg:0
>
> Link <broadcast-link:1001001>
>    Window:50 packets
>    RX packets:95146 fragments:95040/1980 bundles:1/2
>    TX packets:0 fragments:0/0 bundles:0/0
>    RX naks:380938 defs:83962 dups:403
>    TX naks:8362 acks:0 retrans:170662
>    Congestion link:0  Send queue max:0 avg:0
>
> Link <broadcast-link:1001002>
>    Window:50 packets
>    RX packets:0 fragments:0/0 bundles:0/0
>    TX packets:0 fragments:0/0 bundles:0/0
>    RX naks:400546 defs:0 dups:0
>    TX naks:0 acks:0 retrans:159597
>    Congestion link:0  Send queue max:0 avg:0
>
> $ tipc l st sh l 1001002
> Link <1001003:data0-1001002:data0>
>    ACTIVE  MTU:1500  Priority:10  Tolerance:1500 ms  Window:50 packets
>    RX packets:99546 fragments:0/0 bundles:33/877
>    TX packets:629 fragments:0/0 bundles:35/828
>    TX profile sample:8 packets average:390 octets
>    0-64:75% -256:0% -1024:0% -4096:25% -16384:0% -32768:0% -66000:0%
>    RX states:488714 probes:7397 naks:0 defs:4 dups:5
>    TX states:27734 probes:18016 naks:5 acks:2305 retrans:0
>    Congestion link:0  Send queue max:0 avg:0
>
> Link <broadcast-link:1001002>
>    Window:50 packets
>    RX packets:0 fragments:0/0 bundles:0/0
>    TX packets:0 fragments:0/0 bundles:0/0
>    RX naks:400546 defs:0 dups:0
>    TX naks:0 acks:0 retrans:159597
>    Congestion link:0  Send queue max:0 avg:0
>
> $ tipc l st re l broadcast-link:1001002
>
> $ tipc l st sh l broadcast-link:1001002
> Link <broadcast-link:1001002>
>    Window:50 packets
>    RX packets:0 fragments:0/0 bundles:0/0
>    TX packets:0 fragments:0/0 bundles:0/0
>    RX naks:0 defs:0 dups:0
>    TX naks:0 acks:0 retrans:0
>    Congestion link:0  Send queue max:0 avg:0
>
> Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
> ---
>   tipc/link.c | 25 +++++++++++++++++--------
>   1 file changed, 17 insertions(+), 8 deletions(-)
>
> diff --git a/tipc/link.c b/tipc/link.c
> index e123c186..ba77a201 100644
> --- a/tipc/link.c
> +++ b/tipc/link.c
> @@ -334,7 +334,7 @@ static int _show_link_stat(const char *name, struct nlattr *attrs[],
>   
>   	open_json_object(NULL);
>   
> -	print_string(PRINT_ANY, "link", "\nLink <%s>\n", name);
> +	print_string(PRINT_ANY, "link", "Link <%s>\n", name);
>   	print_string(PRINT_JSON, "state", "", NULL);
>   	open_json_array(PRINT_JSON, NULL);
>   	if (attrs[TIPC_NLA_LINK_ACTIVE])
> @@ -433,7 +433,7 @@ static int _show_link_stat(const char *name, struct nlattr *attrs[],
>   			   mnl_attr_get_u32(stats[TIPC_NLA_STATS_LINK_CONGS]));
>   	print_uint(PRINT_ANY, "send queue max", "  Send queue max:%u",
>   			   mnl_attr_get_u32(stats[TIPC_NLA_STATS_MAX_QUEUE]));
> -	print_uint(PRINT_ANY, "avg", " avg:%u\n",
> +	print_uint(PRINT_ANY, "avg", " avg:%u\n\n",
>   			   mnl_attr_get_u32(stats[TIPC_NLA_STATS_AVG_QUEUE]));
>   
>   	close_json_object();
> @@ -496,7 +496,7 @@ static int _show_bc_link_stat(const char *name, struct nlattr *prop[],
>   			   mnl_attr_get_u32(stats[TIPC_NLA_STATS_LINK_CONGS]));
>   	print_uint(PRINT_ANY, "send queue max", "  Send queue max:%u",
>   			   mnl_attr_get_u32(stats[TIPC_NLA_STATS_MAX_QUEUE]));
> -	print_uint(PRINT_ANY, "avg", " avg:%u\n",
> +	print_uint(PRINT_ANY, "avg", " avg:%u\n\n",
>   			   mnl_attr_get_u32(stats[TIPC_NLA_STATS_AVG_QUEUE]));
>   	close_json_object();
>   
> @@ -527,8 +527,10 @@ static int link_stat_show_cb(const struct nlmsghdr *nlh, void *data)
>   
>   	name = mnl_attr_get_str(attrs[TIPC_NLA_LINK_NAME]);
>   
> -	/* If a link is passed, skip all but that link */
> -	if (link && (strcmp(name, link) != 0))
> +	/* If a link is passed, skip all but that link.
> +	 * Support a substring matching as well.
> +	 */
> +	if (link && !strstr(name, link))
>   		return MNL_CB_OK;
>   
>   	if (attrs[TIPC_NLA_LINK_BROADCAST]) {
> @@ -540,7 +542,7 @@ static int link_stat_show_cb(const struct nlmsghdr *nlh, void *data)
>   
>   static void cmd_link_stat_show_help(struct cmdl *cmdl)
>   {
> -	fprintf(stderr, "Usage: %s link stat show [ link LINK ]\n",
> +	fprintf(stderr, "Usage: %s link stat show [ link { LINK | SUBSTRING | all } ]\n",
>   		cmdl->argv[0]);
>   }
>   
> @@ -554,6 +556,7 @@ static int cmd_link_stat_show(struct nlmsghdr *nlh, const struct cmd *cmd,
>   		{ "link",		OPT_KEYVAL,	NULL },
>   		{ NULL }
>   	};
> +	struct nlattr *attrs;
>   	int err = 0;
>   
>   	if (help_flag) {
> @@ -571,8 +574,14 @@ static int cmd_link_stat_show(struct nlmsghdr *nlh, const struct cmd *cmd,
>   		return -EINVAL;
>   
>   	opt = get_opt(opts, "link");
> -	if (opt)
> -		link = opt->val;
> +	if (opt) {
> +		if (strcmp(opt->val, "all"))
> +			link = opt->val;
> +		/* Set the flag to dump all bc links */
> +		attrs = mnl_attr_nest_start(nlh, TIPC_NLA_LINK);
> +		mnl_attr_put(nlh, TIPC_NLA_LINK_BROADCAST, 0, NULL);
> +		mnl_attr_nest_end(nlh, attrs);
> +	}
>   
>   	new_json_obj(json);
>   	err = msg_dumpit(nlh, link_stat_show_cb, link);
Acked-by: Jon Maloy <jmaloy@redhat.com>



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
